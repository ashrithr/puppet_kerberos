puppet module for kerberos
--------------------------

This module will install and manage kerberos servers and clients

### Sample Usage

Installs fully functional KDC ( kerberos server and admin_server utilities )

```puppet
include kerberos::kdc
inlcude kerberos::kdc::admin_server

(or)

include kerberos::server
```

Installs kerberos client:

```puppet
include kerberos::client
```

Sets-up keystab file for specified services

```puppet
kerberos::host_keytab { ["host", "hdfs", "mapred"]: }
```

Using with puppet apply (given this module lives in /root/modules):

```shell
cd ~ && mkdir modules
cd ~/modules && git clone https://github.com/ashrithr/puppet_kerberos.git kerberos
puppet apply --modulepath=/root/modules -e "include kerberos::server"
```

To generate keytab files see example manifest 'hadoop.pp' which will generate keytab files for hadoop users, sample usage:

```shell
puppet apply --modulepath=/root/modules -e "include kerberos::hadoop"
```
To install standalone puppet:

```shell
wget -qO - https://raw.github.com/ashrithr/scripts/master/install_puppet_standalone.sh | bash
```