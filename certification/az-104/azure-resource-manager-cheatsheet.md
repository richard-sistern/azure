# Azure Resource Manager Cheat Sheet

**Azure Resource Manager (ARM)** is a service that allows you to *manage* Azure resources.  It is a management layer that allows you to:

-  Create, update and delete resources
- Apply management features like access controls, locks and tags
- Write Infrastructure as Code (IaC) templates in JSON

ARM is a service layer and **spans multiple features and services**.  For example, Subscriptions, Management Groups, Resource Groups, Resource Providers, Resource Locks, Azure Blueprints, Resource Tags, access Control (IAM), Role-Based Access Controls (RBAC), Azure policies, ARM Templates.

Think of Azure Resource Manager as a *gate keeper*.  All *requests* flow through ARM and it decides whether that request can be performed on a *resource*.

**Scope** is a **boundary of control** for Azure resources.  It is a way to *govern* resources within a logical grouping and apply restrictions in the form of rules.

- **Management Groups** are a logical grouping of multiple subscriptions
  - **Subscriptions** grant access to Azure services based on a billing and support agreement
    - **Resource Groups** represent a grouping of multiple resources
      - **Resources** are an Azure service, eg. VM

An Azure account can have **multiple subscriptions** with the most common being Free Trial, Pay-As-You-Go and Azure for Students.

**Resource Providers** are services within Azure.  Some services are *registered* by default and others need to be explicitly registered.

**Resource Tags** are *key/value pairs* that you can assign to Azure resources.

**Resource Locks** prevent accidental modification or deletion of resources at the subscription, resource group and resource scope level.  The following locks are available:

- **CanNotDelete** (Delete) - Authorised users can still read and modify a resource but are unable to delete the resource
- **ReadOnly** (Read-only) - authorised users can read a resource but are unable to delete or update the resource

**Blueprints** enable *quick creation* of **governed subscriptions**.  Nearly everything you would wish to include in an Azure Blueprint deployment can be accomplished with an ARM template.  Blueprints have a relationship between the definition (what should be deployed) and the assignment (what was deployed).





