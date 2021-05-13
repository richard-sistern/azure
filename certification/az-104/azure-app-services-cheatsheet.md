# Azure App Services Cheat Sheet

The **Azure App Service** is a Platform as a Service (PaaS) which provides **HTTP** hosting for web applications, REST APIs and mobile back ends.  The App Service makes it easy to implement:

- Azure DevOps (for deployments)
- GitHub integration
- Docker Hub integration
- Package Management
- Staging environments
- Custom domains
- Attaching TLS/SSL certificates

Pay based n the Azure App **Service Plan**:

- **Shared Tier** - Free, Shared (**Linux not supported**)
- **Dedicated Tier** - Basic, Standard, Premium, Premium V2, Premium (V3)
- **Isolated Tier**

The following runtimes are supported on either **Windows** or **Linux**:

- .NET/.NET Core
- Java
- Ruby
- Note.js
- PHP
- Python

The service can also be used to run **Docker** single or multi instance containers.  **Custom containers** are supported, simply create Docker file, upload to Azure Container Registry and deploy.

**Deployment Slots** allow the creation of *different environments* for the web application.  These environments can be **swapped**, for example, a Blue/Green deploy.

**WebJobs** allow you to run a program or script in the same instance as a web, API or mobile app,

**App Service Environment** (ASE) provides a *fully isolated and dedicated environment* for securely running App Service apps at high scale.  Multiple ASEs can be created:

- within a single region
- across multiple regions

ASEs are ideal for *horizontally scaling stateless application tiers* in support of *high requests per second (RPS) workloads*.

Features of ASE:

- own pricing tier (Isolated)
- can be used to configure security architecture
- can have app access gated by upstream devices, such as web application firewalls (WAFs)
- can be deployed into Availability Zones (AZ) using zone pinning
- two deployment types:
  - External ASE
  - Internal Load Balancer (ILB) ASE