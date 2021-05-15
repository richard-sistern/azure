# Azure DNS Cheat Sheet

**Azure DNS** is a *hosting service* for *DNS domains* that provides name resolution using Microsoft Azure infrastructure.  You can't use Azure DNS to buy a domain name.

**Public DNS** (internet facing)

- Manage domains for internet accessible domains
  - Pointing your domain to you website
  - Setting records to prove you own the domain
  - Records to connect you domain to your email server

**Private DNS** (internal facing)

- Allows use of custom domains instead of the Azure provided ones

**DNS Zone** is a container for all of the DNS records for a specific domain name

**DNS Record** hold rules of where to direct traffic.  A record is composed of *name*, *type* and *value*:

- **A (address)** - point to an IPv4 address
- **AAAA** - point to an IPv6 address
- **CAA (Certificate Authority)** - records who can issue certificates for a domain
- **CNAME (Canonical Name)** - alias from one domain to another
- **MX (Mail Exchange)** - records point to mail servers
- **NS (Name Server)** - records identify multiple DNS serves for a domain.  Provides fault tolerance 
- **PTR (Pointer)** - records point to a domain or host name but used for reverse DNS lookup
- **SRV (Service)** - records are used to identify computers that host specific services, live locating a DC for AD 
- **TXT (Text)** - records are just text, used for documentation and verification 
- **SOA (Start of Authority)** - records contain administrative details about a domain

An **Alias** is a *special record type* in Azure which works with **A**, **AAAA** and **CNAME** records.  The Azure Alias record points to an Azure resource instead of an IP or hostname.  This **helps avoid dangling domains**.

**Record Set** is a group of records.  Azure always creates a records set, even for a single record.

**Tile to Live (TTL)** indicates how long a value should be cached by clients