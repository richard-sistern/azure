# Azure Network Security Group Cheat Sheet

**Network Security Group (NSG)** filters network traffic to and from Azure resources in a vNet.

An NSG comprises many **Security Rules**

- **Name** - A unique name within the NSG
- **Source or destination** - An IP address or CIDR block, service tag or application security group
- **Port Range** - Specify a single or range of ports
- **Protocol** - TCP, UDP, ICMP or ANY
- **Action** - Allow or Deny
- **Priority** - A number between 100 and 4096 (lower number, higher priority)

Azure will set default inbound and outbound rules for you.

You cannot create two security rules with the same priority and direction.

You may have 5000 NSGs per subscription with 1000 rules per NSG.

The flow record allows a network security group to be stateful.

If you specify an outbound port, you don't need to set the inbound port since it will be set for you.  The opposite is also true.