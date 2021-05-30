# Storage Accounts Cheat Sheet

Azure storage services:

- **Blob** - scalable *object store* for text and binary data.  Supports big data analytics with Data Lake Storage Gen2
- **Files** - managed *file shares* for cloud and on-premises deployments
- **Queues** - schema less storage of structured data in a *NoSQL store*
- **Tables** - *messaging store* for messaging between application components 
- **Disks** - *block level storage* volumes for Azure VMs

## Azure Blob Storage 

Provides **standard** (HDD) and **premium** (SSD) performance tiers.  Standard access tiers:

- Hot - frequent access, highest storage cost with lowest access cost
- Cool - infrequent access, store > 30 days.  Lower storage cost with higher access cost
- Archive - rarely accessed, stored > 180 days. Lowest storage cost with highest access cost

Blob types:

- **Block** - stores text and binary data up to ~4.75TB
- **Append** - optimised for append operations, ideal for logging data
- **Page** -  optimised for random access up to 8TB, stores virtual hard drive (VHD) files and serves Azure virtual machine disks

Tiering:

- **Account level** - any blob that doesn't have an explicitly assigned tier infers its tier from the storage account
- **Blob level** - able to upload a blob to a tier of your choosing.  Changing of tiers happens instantly, except when moving out of archive

**Rehydrating a blob** can take server hours when moving from archive to another tier

**Blob lifecycle management**

You can create rule-based polices to transition data to different tiers.  When a blob is moved to another tier it is charged at the new tiers rate *immediately*. 

Moving to a **cooler tier**:

- Operation billed as a *write operation* to the destination tier
- When the *write operation* (per 10,000) and data write (per GB) charges of the destination tier apply

Moving to a **hotter tier**:

- Operation billed as a read from the source tier
- When the *read operation* (per 10,000) and data retrieval (per GB) charges of the source tier apply
- Early deletion charges for any blob moved out of cool or archive tiers may also apply

**Early deletion** (cool and archive tiers) charges may apply:

- Cool tier (GPv2 only) has an early deletion period of 30 days
- Archive tier has an early deletion period of 180 days.  The charge is prorated.

**Replication Types**

**Primary Region Redundancy** (disaster recovery and failovers)

- Locally Redundant Storage (LRS)
  - Copies data synchronously in primary region
  - Cheapest option
- Zone-redundant storage (ZRS)
  - Copies data synchronously *across 3 AZs* in primary region

**Secondary Region Redundancy** (disaster recovery and failovers)

- Geo redundant storage (GRS)
  - Copes data synchronously in primary region
  - Copies data asynchronously to another region
- Geo-zone redundant storage (GZRS)
  - Copies data synchronously *across 3 AZs* in primary region
  - Copies data asynchronously to another region

Secondary Region **Redundancy with Read Access** (Read Replicas)

- Read-access geo-redundant storage (RA-GRS)
  - Copes data synchronously in primary region
  - Copes data synchronously to another region
- Read-access geo-redundant storage (RA-GZRS)
  - Copes data synchronously in primary region
  - Copes data synchronously to another region

## Azure Files

Azure Files is a fully managed *file share* in the cloud which can be mounted on a file system using SMB or NFS.

A file share can be backed up using *shared snapshots*, these are:

- Read-only and incremental with up to *200 snapshots* per file share.  Backups can be retained for *up to 10 years*
- Backups are stored within the file share.  If the share is removed, so are the backups

**Soft delete** prevents accidental deletion by retaining the data for a period of time before the final delete occurs.

**Storage Tiers**

- **Premium** - SSD with single-digit millisecond IO
- **Transaction optimised (standard)** - HDD for transaction heavy workloads which don't require the low latency of Premium
- **Hot** - optimised for general purpose file sharing such as *team shares* and *Azure File Sync*
- **Cool** - HHD for cost-efficient online archive storage

**Storage Types**

- **General purpose version 2 (GPv2)** - HDD
- **FileStorage** - SSD

Identity can be managed with **on-premise**,**AD DS** or **Store Account Key** (account name/key)

Azure Files can be accessed anywhere via the storage account *public endpoint*.  

**Encryption**

- Encrypted at rest using *Azure Storage Service Encryption (SSE)*
- **Encrypted in transit** with *SMB 3.0+ with encryption* or *HTTPS*

**Azure File Sync** is a service that caches Azure file shares on either *on-premise* Windows servers or *cloud* VMs

## **Uploading Data**

Methods to move data into Azure blob/file storage:

- **AzCopy** - command line tool
- **Azure Storage Data Movement library** - .NET library (backed by AzCopy)
- **Azure Data Factory** - ETL service
- **Blobfuse** - Linux file system driver
- **Azure Data Box** - physical transport of box of HDD
- **Azure Import/Export service** -  own or Microsoft disks

**Azure Import/Export Service**

Can use own drives or Microsoft provided.  Microsoft ships up to 5 encrypted SSDs (**Azure Data Box Disk**) with a 40 TB total capacity per order.

Drives are prepared with the **WAImportExport (64-bit Windows only) tool**:

- Prepare your disk drives that are shipped for import
- Copying data to the drives
- Encryption of data with AES 256-bit BitLocker
- Generating journal files which are used during import
- Identifying the number of drives required for export jobs

The tool comes in two versions:

- **Version 1** for import/export into Azure Blob storage
- **Version 2** for import into Azure **files**

With export jobs:

- You can only export from Azure Blob
- You can ship up to 10 empty drives to Azure per job
- You create an export job and the data is loaded onto those drives and shipped back to you

## Shared Access Signature (SAS)

Proves are URL that grants restricted access rights to **Azure Storage** resources.

**Account level SAS**

- Access to resources in *one or more* storage services

**Service level SAS**

- Access to single storage account using the account key

**User delegation SAS (best practise)**

- Access to storage account using Azure AD credentials
- Limited only to Blob and Containers

A shared access signature comes in the following formats:

**Ad hoc SAS**

- Start, expiry times and permissions are part of the URI
- Any type of SAS can be an ad hoc SAS

**Service SAS with stored access policy**

- Stored access policy is defined on a resource container (limited to blob, table, queue or file share)
- Stored access policy can be associated to multiple SAS to manage constraints