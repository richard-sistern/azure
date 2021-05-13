# Azure Backup Cheat Sheet

**Azure Backup Service** is a backup layer that spans many azure services.  This has started to be centralised into *Backup Centre*.

- On-premise, Azure VMs, Azure Files, SQL Server (via Azure VM), SAP HANNA (via Azure VM), Azure Database for PostgreSQL
- Azure backup is *directly integrated* with Azure Services, you wont find it based on service name
- Offloads on-premise backups
- Backs up VMs
- Scales easily
- Provides unlimited data transfer (no limit and no charge)
- Built in security at test and in transit
- Centralised monitoring and management
- App consistent backups 
- Automatic storage management
- Multiple storage options

**Azure Recovery Services (ARS) vault** is a **storage entity** in Azure that contains *data* and *recovery points* created over time.

- Enhanced capabilities to help secure backup data
- Central monitoring for a hybrid environment
- Azure role-based access control (RBAC)
- Soft delete
- Cross region restore

Microsoft Azure Recovery Services (MARS) agent backs up *files*, *folders* and *system state* from Windows *on-premise* machines and *Azure VMs*

- Backups are stores in a Recovery Services vault in Azure
- The MARS agent is also knows as the Azure Backup agent
- The MARS agent does not support Linux operating systems
- **Azure Site Recovery (ASR)** his a *hybrid* (on-premise to cloud) backup solution for **site-to-site recovery**