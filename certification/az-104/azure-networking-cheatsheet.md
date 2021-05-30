# Azure Networking Cheat Sheet

**Virtual Network (vNet)** is a logically isolated section of the Azure Network, where you can launch resources.

**vNet Peering** (connect multiple vNets to act as one network)

- **Regional** peers two vNets in the same region
- **Global** peers two vNets from different regions

**Azure Network Interfaces (NICs)**

- Attached to a VM instance
- Without a NIC, a VM has no way to communicate
- An Azure VM instance has to have one NIC but can have more

**Route Table** is a table of data stored in router or network host which lists routes to next destinations

- Azure automatically creates a route table with default routes (system routes) and associates them to subnets
- The *system routes* can be overridden by creating a new route table and associating it with a subnet

**Address Space** denotes *a range of available IP address* that are allocated to using within a vNet.  The amount of addresses available is determined by the CIDR notation.

**Subnet** is a *logical division of an address space*

- Requires a route table for access
- Public and private subnet describes where a subnet is reachable from the internet or not
- Azure **has no concept of private and public subnets**.  You have to configure subnets to ensure they do not reach the internet
- You can associate an NSG to protect traffic entering and leaving a subnet
- Azure has a special type of Gateway Subnet, used by **Azure Virtual Network Gateway**

**Azure Private Links** provides a *secure connection* between Azure resources so traffic *remains within the Azure Network*.

- **Private Link Endpoint** is a *network interface* that connects to a service powered by Azure Private Link.  This uses a private IP address from your vNet
- **Private Link Service** allows you own workloads to connect to a private link.  This requires an *Azure Standard Internal Load Balancer* to be associated with the link service
- Many Azure services (Storage, CosmoDB, SQL) can work with private link and also third party providers

**Azure Firewall** is a managed *cloud-based network security service* that protects *Azure vNet* resources

- Full stateful Firewall as a Service (FWaaS)
- Can centrally *create*, *enforce*, and *log* application and network connectivity polices across subscripts and virtual networks
- Uses a *static public IP address* for vNet resources, allowing outside firewalls to identify traffic originating from your virtual network
- Fully integrates with **Azure Monitor** for logging and analytics
- Launches on its own vNet.  Other vNets pass through this central vNet
- Has **Microsoft Threat Intelligence** which blocks known malicious IPs and FQDNs

**Azure ExpressRoute** creates *private connections* between Azure datacentres and infrastructure on premise or in a colocation environment.  Connectivity is provided though a provider ad a colocation facility and can be any-to-any (IP VPN), point-to point Ethernet network and virtual cross-connection

**ExpressRoute Direct** provides *greater bandwidth connections* from 50 Mbps to 10Gbps