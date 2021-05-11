# Azure Disks Cheat Sheet

**Azure Managed Disks** are *block-level storage* and used with Azure VMs

## Overview

- Managed disks have *99.999%* availability.  Azure creates *three replicas* of a disk.
- You can create up to 50,000 disks in a subscription per region.
- You can create up to 1,000 VMs in a virtual machine scale set.
- Managed disks are integrated with **availability sets**
- Managed disks support **availability zones**
- You can use **Azure Role Based Access Control (RBAC)** to assign specific permissions for a managed disk to users and groups
- Virtual hard drive disks (VHD) can be **directly imported** into Azure disks
- **Azure Private Links** can be used to ensure traffic between Azure Disks and VMs stays within the Microsoft network
- **Azure Managed Disks** support the following encryption:
  - Server Side Encryption (SSE) 
    - *Enabled by default* for all managed disks, snapshots, and images
    - Temporary disks are *not encrypted* by SSE unless you enable encryption at host
    - Keys can be managed within Azure (platform) or customer managed
  - Azure Disk Encryption (ADE)
    - Encrypts the **OS and Data disks** within an IaaS Virtual Machine
    - On Windows, this uses **BitLocker**
    - On Linux, this uses **DM-Crypt**

## Roles

There are 3 main disk roles in Azure, the **data disk**, the **OS disk** and the **temporary disk**

**Data Disk**

- Managed disk attached to a virtual machine to store application or other data
- Registered as a SCSI drive and labelled how you choose
- Maximum capacity of 32 GB
- The VM size determines the number of data disks you can attach and the type of storage available

**OS Disk**

- One attached to every VM
- Has a pre-installed OS, which is selected when the VM is created
- Contains the boot volume
- Maximum capacity of 4 GB

**Temporary Disk**

- Used by most VMs, not a managed disk
- Provide short-term storage for applications and processes, and is intended to only store data such as page or swap files
- Data may be lost during a maintenance event or when you redeploy a VM
- Data persists during a standard reboot of the VM
- Typically mounted to /dev/sdb on Linux and D on Windows
- Not encrypted by SSE unless encrypt at host is enabled

## Backup

**Azure backup** can be used with schedules and backup retention polices

To backup single disks, use a *managed disk snapshot*. For multiple disks, use a *managed custom disk*

A **managed disk snapshot** is a *read-only crash-consistent full copy of a managed disk* that is stored as a standard managed disk by default.  Snapshots:

- Are point in time recovery
- Exist independent of the source disk and can be used to create new managed disks
- Billed based on used size of the drive
- Usage size can be found in the Azure usage report

A **managed custom image** creates an image containing **all managed disks** associated with a VM

## Tiers

**Ultra Disks** (high throughput, I/OPs and consistent low latency)

- able to dynamically change performance, without a VM restart
- can only been used as *data disks*

**Premium SSD** (high performance and low latency)

- can only be used with a VM sizes that are premium storage compatible
- guaranteed IOPS
- meets low single digit ms latency with target IOPS/throughput 99.9% of the time

**Standard SSD** (cost effective, consistent performance at lower IOPS levels)

- no guaranteed IOPS
- available on all Azure VMs

**Standard HDD** (lowest cost for latency insensitive workloads)

- no guaranteed IOPS
- available on all Azure VMs

### 



