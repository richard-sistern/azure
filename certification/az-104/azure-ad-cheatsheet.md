# Azure Active Directory Cheat Sheet

**Active Directory (AD)** is Microsoft's *identity and access management service*.

**Azure Active Directory (Azure AD)** is Microsoft's cloud-based version of AD. *Identity as a Service (IDaaS)*.

Azure AD versions:

1. **Free** - MFA, SSO, Basic Security and Usage Reports, User Management
2. **Office 365 Apps** - Company Branding, SLA, Two-Sync between On-Premise and Cloud
3. **Premium 1 (P1)** - Hybrid Architecture, Advanced Group Access, *Conditional Access* 
4. **Premium 2 (P2)** - Identity Protection, Identity Governance

Azure AD can *authorise* and *authenticate* to multiple sources:

- On-premise AD via **Azure AD Connect**
- Web applications via **App Registrations**
- Allow login with IpD (e.g.. Facebook or Google) via **External Identities**
- Office 365 or **Azure Microsoft**

A **tenant** *represents and organisation* in Azure AD. A tenant is a dedicated Azure AD Service instance which is automatically created when you sign up for either Microsoft Azure, Microsoft Intune, Microsoft 365.

Each Azure AD tenant is distinct and separate from other Azure AD tenants.

When performing a lift-and-shift of AD to Azure, not all AD features are supported and in that case you need to use AD DS.  **Azure Active Directory Domain Services (AD DS)** provides managed domain services, such as:

- Domain joins
- Group polices
- LDAP
- Kerberos and NTLM authentication

**Azure AD Connect** provides the following:

- **Password hash synchronisation** - sign-in method, synchronises a hash of users on-premise AD password with Azure AD
- **Pass-through authentication** - sign-in method, allows users to use same password on premises and in the cloud
- **Federation integration** - hybrid environment using an on-premises AD FS infrastructure, for certificate renewal
- **Health monitoring** - monitors and provides a central location in the Azure portal to view activity

Azure AD has two kinds of users:

- **Users** - belongs to your organisation
- **Guest Users** - belongs to another organisation

**Request to Join Groups**

The group owner can let users find their own groups to join, instead of assigning them.  The owner can set the group to automatically accept all users or require approval.

The are **four ways** to *assign resource access rights* to users:

- **Direct assignment** - The resource owner directly assigns the user to resource
- **Group assignment** -  The resource owner assigns an Azure AD group to the resource
- **Rule-base assignment** - The resource owner creates a group and users a rule to define which users are assigned to a specific resource
- **External authority assignment** - Access comes from an external source, such as an on-premises directory or a SaaS app

