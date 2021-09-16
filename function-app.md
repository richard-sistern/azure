# Azure Function Apps

## Console

A ping operation within an Azure function is unsuccessful because the ICMP protocol is not permitted in Azure. Can use tcpping instead:

```shell
D:\home\site\wwwroot>ping google.com
Unable to contact IP driver. General failure.

D:\home\site\wwwroot>tcpping google.com
Connected to google.com:80, time taken: 31ms
Connected to google.com:80, time taken: <1ms
Connected to google.com:80, time taken: <1ms
Connected to google.com:80, time taken: <1ms
Complete: 4/4 successful attempts (100%). Average success time: 7.75ms
```

DNS lookups can be performed with:
```shell
nameresolver google.com

nameresolver google.com 8.8.8.8
```

On Windows hosts the SysInternals tools are preinstalled into `d:\devtools\sysinternals` which must be used with /accepteula to stop the popup EULA screen.
