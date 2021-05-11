# Virtual Machines Cheat Sheet

**Azure Virtual machines (VMs)** allow you to create Linux and Windows virtual machines.  These are billed at an **hourly rate**.

The **size** of the virtual machine is determined by the image:

- vCPUs
- Memory
- Storage Capacity

A variety of sizes are available, there are geared towards specific use cases:

- General Purpose
- Compute Optimised
- Memory Optimise
- Storage Optimised
- GPU
- High Performance Compute

There is currently a limit of **20 VMs** per **region** in a **subscription**

A single VM has an availability of 99.9% (using premium disks only)

Two VMs in an *Availability Set* provide 99.95% availability

When you *launch* an Azure Virtual machine other networking components will either be created or associated to the VM:

- Network Security Group (NSG)
- Network Interface (NIC)
- Public IP Address
- VNet

You can *bring your own Linux* by creating a Linux Virtual Hard Disk (VHD)

The **Azure Compute Unit (ACU)** provides a way of comparing CPU performance across Azure VM sizes.  The ACU is currently based on a **Small (Standard_A1)** which is given a value of *100*.  All other sizes then represent approximately how much faster they run a standard benchmark.

VMs can be managed by the **Azure Mobile App**

## Connection

There are *3 ways* to connect to Azure Virtual Machines

### Secure Shell (SSH)

- Requires *port 22* via TCP
- RSA Key Pairs are commonly used to authorise access

### Remote Desktop Protocol (RDP)

- Allows remote connection to Windows machines
- Requires *port 3389* via TCP and UDP

### Azure Bastion

An Azure service you deploy which allows connection to virtual machines in a browser from the Azure portal.  Supports both SSH and RDP.

## Update Management

Allows you to **manage and install OS updates and patches** for both *Windows* and *Linux* machines in Azure, on-premise and other cloud providers.

- Update Management performs a scan for update compliance
- A compliance scan is by default, performed **every 12 hours on *Windows*** and **every 3 hours on Linux**
- Results can take **30 minutes to 6 hours** to display in the dashboard