class yumrepos::elasticsearch {
  yumrepo { "logstash-1.4":
    baseurl  => "http://packages.elasticsearch.org/logstash/1.4/centos",
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => "http://packages.elasticsearch.org/GPG-KEY-elasticsearch",
  }
  yumrepo { "elasticsearch-1.0":
    baseurl  => "http://packages.elasticsearch.org/elasticsearch/1.0/centos",
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => "http://packages.elasticsearch.org/GPG-KEY-elasticsearch",
  }

}

