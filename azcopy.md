# AzCopy

## Usage

### Web Login

```shell
# azcopy copy <source> <dest>

azcopy copy test.txt https://rmsstoragedemo.blob.core.windows.net/test/test.txt
```

The URL is provided in the properties of the storage container blade.

#### Issues

##### User account does not exist in tenant

```shell
azcopy login
# To sign in, use a web browser to open the page https://microsoft.com/devicelogin and enter the code DP7KM8F8N to authenticate.

# INFO: Logging in under the "Common" tenant. This will log the account in under its home tenant.
# INFO: If you plan to use AzCopy with a B2B account (where the account's home tenant is separate from the tenant of the target storage account), please sign in under the target tenant with --tenant-id
```

When performing web browser logon the following error is given:

> Selected user account does not exist in tenant 'Microsoft Services' and cannot access the application '579a7132-0e58-4d80-b1e1-7a1e2d337859' in that tenant. The account needs to be added as an external user in the tenant first. Please use a different account.

This is unrelated to user permissions, simply provide the correct target tenant

```shell
azcopy login --tenant-id 64g1gdae-e6cc-6e48-a935-a3d9e97d4408
# To sign in, use a web browser to open the page https://microsoft.com/devicelogin and enter the code D7V9YDY5D to authenticate.
```

To retrieve the tenant id.  In the Azure portal dashboard:

1. Search Azure Active Directory
2. Choose Azure Active Directory
3. Copy the Tenant ID



### Shared Access Signature (SAS) Login

```shell
# azcopy copy <source> <blob SAS URL>

azcopy copy test.txt https://rmsstoragedemo.blob.core.windows.net/test?sp=racwl&st=2021-05-10T12:29:45Z&se=2021-05-10T20:29:45Z&spr=https&sv=2020-02-10&sr=c&sig=hsHErIU3tvNwyqoVX5bVwbgu0we1t318qYgAWlIEKtM%3D
```

#### Issues

##### PowerShell script error when running a copy

> The term 'sig=hsHErIU3tvNwyqoXV5bVwbgu6we1t138qYgWAlIEKtM%3D' is not recognized as a name of a cmdlet, function, script file, or executable program.
> Check the spelling of the name, or if a path was included, verify that the path is correct and try again.

When running the command in PowerShell Core terminal, everything after `&` is translated into background jobs.  Simply enclose the blob SAS URL in single quotes.

