# Application Gateway Cheat Sheet

**Azure Application Gateway** is an *application-level routing* and *load balancing* service which operates on **OSI Layer 7** (application layer).

**Azure Web Application Firewall (WAF)** policies can be attached to an Application Gateway to provide additional security.

An Application Gateway comprises:

- **Frontends** with a choice of address type:
  - **Private IP** (internal load balancer)
  - **Public IP** (public/external load balancer)
- **Backends** (pools)
  - Collection of resources where your application gateway sends traffic
  - Can contain, VMs, VM scale sets, IP addresses, domain names, App Service
- **Routing Rules** which are composed of **Listeners, Backend targets, HTTP settings**
  - **Listeners** listen to on a specific port and IP address for traffic that uses a specified protocol
    - If criteria are met, the application gateway will apply this routing rule
    - **Basic** listeners forward all requests for any domain to backend pools
    - **Multi-site** listeners forward requests to different backend pools based on *host header* and *host name*
    - Requests are matched according to the **order of the rules** and type of listener.  Add basic listeners last, otherwise it will capture all requests
  - **Backend targets** choose where a route should go, either **Backend Pool** or **Redirection**
    - To create a rule for Backend Pool, you need to create an **HTTP Setting**
    - HTTP Settings define how to handle cookies, connection draining, port request time out, etc.

 