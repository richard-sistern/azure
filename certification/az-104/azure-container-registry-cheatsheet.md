# Azure Container Registry Cheat Sheet

**Azure Container Registry (ACR)** is a managed , private **Docker registry service** based on the *open-source Docker Registry 2.0*

Use **Azure Container Registries** with existing container development and deployment pipelines.

Use **Azure Container Registry Tasks** to build container images in Azure.

Pull images from an Azure container registry to various *deployment targets*:

- Kubernetes
- DC/OS
- Docker Swarm

**Azure Container Registry (ACR) Tasks** can *automate OS and framework patching* of Docker containers.

- You can *trigger automated* builds with:
  - Source code updates
  - updating a containers base image
  - timers on a schedule
- You can create *multi-step* tasks
- Each ACR task has an associated *source code context*
- Tasks can use *run (environment) variables*

