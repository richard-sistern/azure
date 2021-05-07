#  Azure Roles Cheat Sheet

Role types:

- **Classic subscription administrator roles** - the original (depreciated)
- **Azure roles** - known as role-based access controls (RBAC), built on top of Azure Resource Manager
- **Azure Active Directory (Azure AD) roles** - used to manage Azure AD resources in a directory

**Identity Access Management (IAM)**

Allows you to create and assign Azure (RBAC) roles to users.

Roles restrict access to resource actions (known as operations).  There are:

- BuiltInRole - Manage Microsoft roles are read only and pre-created
- CustomRole - Created by you with custom logic.  Requires an *Azure AD Premium (P1 or P2)* license

**Role assignment** is when a role is applied to a user.  This comprises a security principal, role definition and scope.

The built in roles are:

- Owner
- Contributor - (unable to grant)
- Reader 
- User Access Administrator (grant only)

**Classic Administrators** have:

- **Account administrator** - billing owner of subscription, no access to Azure portal
- **Service administrator** - same access as user assigned the owner role at subscription scope.  Full access to Azure portal
- **Co-administrator** - same access as user assigned the owner role at the subscription scope

**Important Azure AD Roles**

- **Global Administrator** - full access to everything
- User Administrator - full access to create and manage users
- **Billing Administrator** - make purchases, manage subscriptions and support tickets



