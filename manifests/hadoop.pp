# This class will generate keytab files for hadoop users, change accordingly to your environment

class hadoop::kerberos {
  require kerberos::client

  $hadoop_mapreduce_framework = "mr1"

  kerberos::host_keytab { "hdfs":
    princs => [ "host", "hdfs" ],
    spnego => true,
  }

  if ($hadoop_mapreduce_framework == "mr1") {
  kerberos::host_keytab { "mapreduce":
    princs => "mapred",
    spnego => true,
  }
  }
  if($hadoop_mapreduce_framework == "mr2") {
  kerberos::host_keytab { "yarn":
    princs => "yarn",
    spnego => true,
  }
  }
}