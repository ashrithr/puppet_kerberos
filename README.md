puppet module for kerberos
--------------------------

This module will install and manage kerberos servers and clients

### Sample Usage

Installs fully functional KDC ( kerberos server and admin_server utilities )

```
include kerberos::kdc
inlcude kerberos::kdc::admin_server

(or)

include kerberos::server
```

Installs kerberos client:

```
include kerberos::client
```

Sets-up keystab file for specified services

```
kerberos::host_keytab { ["host", "hdfs", "mapred"]: }
```

Using with puppet apply (given this module lives in /root/modules):

```
$puppet apply --modulepath=/root/modules -e "include kerberos::server"
```