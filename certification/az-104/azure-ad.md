# Azure AD

## Device Management

Management of **physical devices**, such as phones, tables, laptops and desktop computers.  These are granted access to company resources such as printers, cloud resources via **device-based Conditional Access**.

There are three ways to get devices into Azure AD:

- **Azure AD Registered** - *personally* owned or mobile devices that are signed in with a *personal* Microsoft or local account
- **Azure AD Joined** - owned by an *organisation* and signed in with an Azure AD account belonging to that organisation.  They exist *only in the cloud*
- **Hybrid Azure AD joined** - owned by an organisation and are signed in with an Active Directory Domain Services account belonging to that organisation.  Exists *in the cloud and on-premises*

### **Azure AD Registered Devices**

Registered to Azure Ad without requiring organisation account to sign in to the device.  Used for BYOD and mobile devices owned by the user or organisation.

#### **Device Management**

- **Mobile Device management** (Microsoft Intune)
- **Mobile Application Management**

#### Capabilities

- **SSO** to cloud resources
- Conditional Access when **Enrolled into Intune**
- Conditional access via **App protection policy**
- Enables phone sign in with **Microsoft Authenticator app**

### Azure AD Joined Devices

Joined only to Azure Ad requiring organisation account to sign-in to the device.  Requires Windows 10 (except home) or Windows Server 2019 (except core)

#### Device Management

- Mobile Device management (Microsoft Intune)
- Co-management with Microsoft Intune and Microsoft Endpoint Configuration Manger

#### Capabilities

- SSO to both cloud and on-premises resources
- Conditional Access through MDM enrolment and MDM compliance evaluation
- Self-service Password Reset and Windows Hello PIN reset on lock screen
- Enterprise state roaming across decides

### Hybrid Azure AD Joined Devices

Joined to on-premises AD and Azure AD requiring organisation account to sign in to the device

#### Device Management

- Group Policy
- Configuration manager standalone
- Configuration manager with Intune co-management 

#### Key Capabilities

- SSO to both cloud and on-premises resources
- Conditional Access through Domain join or through Intune (if co-managed)
- Self-service password reset and Windows Hello PIN reset on lock screen
- Enterprise state roaming across devices

#### Windows Autopilot

Collection of technologies used to set up and pre-configure new devices, getting them ready for use.  When initially deploying new devices:

- Windows Autopilot uses the OEM-optimised version of Windows 10
- Preinstalled on the device
- Existing Windows 10 installation transformed into a business ready state

### Microsoft Intune

*Manages both MDM and MAM.  To use Microsoft Intune you have to upgrade to **Azure AD Premium 2***.

**Intune**, is part of **Microsoft Endpoint Manager**, which is part of **Microsoft Enterprise Mobility + Security (EMS)**.

#### Mobile Device Management (MDM) 

*Control the entire device, can wipe data from it, and also reset to factory settings*

#### Mobile Application Management (MAM)

*Publish, push configure, secure, monitor, and update mobile apps for users*

### Authentication

#### Windows Hello

Provides *an alternative way* for Windows 10 users to log into their devices and applications using:

- Fingerprint
- Iris scan
- Facial recognition 

#### Microsoft Authenticator

Secure sign-ins for all on-line accounts

#### FIDO2.0 Security Keys

Fast Identity Online (FIDO) Alliance is an open association who *develop and promote authentication standards*.  Publishes *open specifications*:

- FIDO Universal Second Factor (FIDO U2F)
- FIDO Universal Authentication Framework (FIDO UAF)
- Client to Authenticator Protocols (CTAP)
- CTAP is complementary to the W3C's Web Authentication (WebAuthn) specification; together, they are known as **FIDO2**

