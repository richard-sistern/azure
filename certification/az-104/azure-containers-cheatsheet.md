**Azure Container Instances (ACIs)** is designed to run isolated containers for

- simple applications
- task automation
- build jobs

Containers

- can be provisioned *within seconds*
- are *billed per second*
- have *granular and custom sizing of vCPUs, Memory and GPUs*
- be *Linux* or *Windows*
- can *persist storage with Azure files*
- accessed via a FQDN, for example, label.azureregion.azurecontainer.io

**Container Groups** are collections of containers that are scheduled on the same host machine.

- Containers in a group share lifecycle, resources, local network and storage volumes
- A little similar to a Kubernetes pod
- Multi-container groups currently support Linux only

A multi-container group can be deployed with:

- **Resource Managers Templates (ARM template)** - when you have to deploy additional Azure service resources
- **YAML files** - deploying container instances only

A **container restart policy** specifies what a container should do when their process has completed.

- **Always** (default) - container are *always restarted*.  Suited to long running tasks such as web servers
- **Never** - *run once only*. Suited to one off tasks like background jobs
- **On Failure** - containers that encounter an error 

**Azure Containers** are *stateless* by default.  When a container crashes or stops, all state is lost.  To persist state external storage has to be *mounted*.  

- Azure files (file share)
- Secret volume
- Empty directory
- GIT repo

Azure CLI commands

```shell
# pull logs
az container logs

# diagnostic information during container startup
az container attach

# interactive container run
az container exec

# list metrics such as CPU usage
az monitor metrics list
```

