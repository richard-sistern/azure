# Azure Network Watcher Cheat Sheet

**Azure Network Watcher** provides tools to *monitor, diagnose and view network metrics*.  You can also enable/disable logs for resources in an Azure vNet.

- IP Flow Verify
- Packet Capture
- Troubleshoot VPNs
- NSG Flow Logs
- Diagnostic Logs
- Traffic Analytics
- NPM

Watcher *can* monitor and repair Azure resources you provision such as Virtual Machines, virtual Networks, Application Gateways and Load Balancer.

Network Watche**r**

- **Cannot** be used to monitor PaaS (filly managed services) or Web Analytics
- Is **disabled by default** in most regions and must be enabled at a per region basis
- Can **visualise** the topology of you vNets

**Network Performance Monitor (NPM)** is a *cloud-based hybrid network monitoring solution* that helps monitor network performance between various points in a network infrastructure.

- Traffic blackholing
- Routing errors
- Unconventional network issues
- Generates alerts and notifies you when a threshold is breached for a network link