# Azure Monitor Cheat Sheet

Azure Monitor collects, analyses and acts on telemetry from your cloud and on-premises environments.  

- Create dashboards
- Smart alerts
- Automated actions
- Log monitoring

To achieve observability, you need to combine **Metrics**, **Logs** and **Traces**

- **Metrics** - a value measured over a period of time
- **Logs** - a text file of time series event data
- **Traces** - history of a request that travels through multiple apps/services.  Used to pinpoint performance issues or failure

Azure Monitor collects **Log** and **Metric** data from sources.

**Azure Monitor Logs** (log and performance data)

- Data logs are consolidated from different sources into **workspaces**
  - Platform logs from Azure services
  - Log and performance data from virtual machine agents
  - Usage and performance data from applications
  - Analysis performed using **Kusto Query Language (KQL)**
- Work with log queries and their results interactively using **Log Analytics**

**Azure Monitor Metrics** (numeric data in a **time series database**)

- Metrics a numerical vales collected at regular intervals and describe some aspect of a system at a particular time
- Lightweight and capable of supporting near real-time scenarios, useful for alerting a fast detection of issues
- Analyse interactively with **Metrics Explorer**

**Log Analytics** is a tool to **edit and run log queries** using KQL with data in **Azure Monitor Logs**

**Log Analytics Workspaces** are unique environments for Azure Monitor log data.  Each workspace has its own data repository and configuration, data sources and solutions are configured to stare their data in a workspace.

**Azure Monitor Logs** are based on Azure Data Explorer and log queries are written in KQL.

**Kusto Query Language (KQL)**

- Can be used in , Log Analytics, Log Alert Rules, Workbooks, Azure Dashboards, Logic Apps, PowerShell, Azure Monitor Logs API
- Based on relational database management systems and supports entities such as *databases, tables* and *columns*
- Query operators include calculated columns, searching and filtering on rows, group by aggregates, join functions
- Kusto queries execute in the context of a **Kusto database** attached to a *Kusto cluster*
- Kusto is generally composed of entities:
  - **Clusters** - holds databases
  - **Databases** - holds tables and stored functions
  - **Stored functions** - allows reuse of Kusto queries or query parts
  - **Tables** - holds data
  - **Columns** - scalar data types
  - **External tables** - reference data stored outside of the Kusto database

**Metrics Explorer** is a sub-service of Azure Monitor that allows you to *plot charts, visualise correlating trends and investigate spikes and dips* in **metrics values**.  The visualise a metric you have to define:

- **Scope** - select *resource(s)
- **Namespace** - specific group of metric data within a resource
- **Metric** - the value you wish to visualise
- **Aggregates** - how to group values in the final output 

**Alerts** notify when issues are found within the infrastructure or application

- Allows you to *identify and address* issues before users of the system notice them
- Alert types:
  - Metric Alerts
  - Log Alerts
  - Activity Log Alerts

**Azure Dashboards** are virtual workspaces to *quickly launch tasks for day-to-day operations and monitor resources*

**Azure Workbooks** provide a flexible *canvas for data analysis* and the creation of rich visual reports within the Azure portal.  They tell a *story* about the performance and availability of applications and services.

**Application Insights** is an **Application Performance Management (APM)** service, which is itself a sub-service of Azure Monitor:

- automatically detect performance anomalies
- includes analytics tools to help diagnose issues and understand what users do in an app
- designed to help contiguously improve performance and usability
- works for .NET, Node.js, Java and Python hosted on cloud, hybrid, AWS, etc.
- integrates into DevOps processes
- can monitor and analyse telemetry from mobile apps by integrating with Visual Studio App Centre

To use Application Insights **you have to instrument your application**

- install the instrument package (SDK), or enable Application Insights using the Application Insights Agents, where supported
- Apps can be instrumented from anywhere
- When Application Insights is configured for a web app, an Application Insights *resource* is created in Azure
- This resource is used to view and analyse telemetry collected from the app
- The resource is identified by an *instrumentation key* (ikey)