# ARM Templates Cheat Sheet

**Infrastructure as Code (IaC)** is the process of *managing and provisioning* resources through machine-readable *definition files* (eg. JSON) rather than physical hardware or interactive configuration tools.

These can be:

- **Declarative** - define what you want, get exactly that
- **Imperative** - define what you generally want, the service will guess the rest

**ARM templates** are *JSON files that define Azure resources* you wish to provision and configure.  They are declarative templates.

ARM template structure:

- **$schema** describes the properties that are available within a template
- **contentVersion** is a (user defined) version number for the template
- **apiProfile** avoids having to specify API versions for each resource in the template
- **parameters** are values you can pass to the template
- **variables** are used to transform parameters or resource properties using function expressions
- **functions** are user defined functions within the template
- **resources** define the resources to deploy or update
  - **type** of the resource
  - **apiVersion** defines the version of the REST API to use, each resource providers publishes its own API versions
  - **name** of the resource
  - **location** defines the region where the resource will be deployed
  - **other properties** will vary per resource type
- **outputs** are values that are returned after deployment, used to chain templates

