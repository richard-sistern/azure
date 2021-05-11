# Scale Sets Cheat Sheet

Azure Scale Sets allow you to **automatically** *increase* or *decrease* VM capacity.  Often associated with a **Load Balancer** to:

- Evenly distribute across multiple Availability Zones
- Use probe checks for more robust health checks

The following load balancers can be used:

- **Application Gateway** is an **HTTP/HTTPS** web traffic load balancer and application firewall
- **Azure Load Balancer** supports **TCP/UDP** traffic, port-forwarding and outbound flows

A **Scaling Policy** determines when a VM should be added or removed

- **Scale Out** *adds* an instance to the scale set to *increase* capacity
- **Scale In** *removes* an instance from the scale set to *decrease* capacity

**Scale-In Policy** determines how a VM is removed (deleted) to decrease capacity

- **Default** - delete the VM with the highest instance ID, balanced across Availably Zones (AZs) and Fault Domains (ADs)
- **Newest VM** - balanced across Availably Zones (AZs)
- **Oldest VM** - balanced across Availably Zones (AZs)

**Update Policy** determines how VM instances are brought up-to-date with the latest scale set model

- **Automatic** - start upgrading immediately in random order
- **Manual** - existing instances must be manually upgraded
- **Rolling** - upgrades roll out in batches with optional pause

**Health monitoring** determines if a service is *healthy* or *unhealthy*

- **Application health extension** requests a page over HTTP and expects a status of 200
- **Load balancer probe** checks based on TCP, UDP or HTTP requests

**Automatic repair policy** - if an instance is unhealthy then delete and launch a new instance

