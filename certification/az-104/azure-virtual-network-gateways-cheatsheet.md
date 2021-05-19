# Azure Virtual Network Gateways Cheat Sheet

A VPN *extends a private network across a public network* and enables users *to send and receive data across shared or public networks* as if their computing devices were directly connected to the private network.

A **virtual network gateway** is the software VPN device for the Azure virtual network.  When you deploy a VNG:

- Two or more specialised VMs are deployed in a specific  subnet called *"gateway subnet"*
- These VMs contain routing tables and run specific gateway services
- You will choose a **Gateway Type** to specify **VPN** or **ExpressRoute**

When creating a VPN gateway, you are generally designing for one of the following topologies: 

- **Site-to-Site (S2S)** - connect Azure to an on-premise datacentre
- **Multi-Site** - connect Azure to multiple on-premise datacentres 
- **Point-to-Site (P2S)** - connect Azure to multiple individual computers
- **vNet-to-vNet** - connect two vNets in different regions, subscriptions or deployment models

