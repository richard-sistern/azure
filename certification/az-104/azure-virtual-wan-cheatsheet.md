# Azure Virtual WAN Cheat Sheet

**Azure Virtual WAN** is a *consolidated networking service* that covers most networking, security and routing functionality in a single interface.  This includes:

- Branch connectivity (via connectivity automation from Virtual WAN Partner devices such as SD-WAN or VPN CPE)
- Site-to-site VPN connectivity
- Remote user VPN (point-to-site)
- Private ExpressRoute connectivity
- Intra-cloud connectivity (transitive connectivity for virtual networks)
- VPN ExpressRoute inter-connectivity
- Routing
- Azure Firewall encryption for private connectivity

The Azure Virtual WAN itself is a **Software Defined WAN (SD-WAN)** and is a better way to route to branches, datacentres, vNet and cloud services than MPLS.

A *Point of Presence (PoP)* is an entry at the edge of a network, for example, an ISP datacentre.

A *Hop* is when you change networks

**Multi-Protocol Label Switching (MPLS)** is a method of packet forwarding, where instead of using IP and layer 3 information to make forwarding decisions an *MPLS label* is used to determine the shortest route to an end destination.

**Software Defined WAN (SD-WAN)** decouples CPU intensive tasks from routers such as the management, operations and control planes that can now be controlled in a central location remotely and virtually at your headquarters.

- Replaces MPLS, so you traverse the internet instead of a private network
- More cost effective and requires less configuration than an MPLS initially and at scale
- Secure because it used HTTPS as supported by your ISP