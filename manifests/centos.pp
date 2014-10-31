class yumrepos::centos {
  $centos_baseurl = $yumrepos::centos_baseurl
  yumrepo { "base":
    baseurl  => "${::centos_base_url}/${::os_maj_version}/os/${::architecture}",
    descr    => "CentOS-${::os_maj_version} - Base",
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6",
  }
  yumrepo { "updates":
    baseurl  => "${::centos_base_url}/${::os_maj_version}/updates/${::architecture}",
    descr    => "CentOS-${::os_maj_version} - Updates",
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6",
  }
  yumrepo { "extras":
    baseurl  => "${::centos_base_url}/${::os_maj_version}/extras/${::architecture}",
    descr    => "CentOS-${::os_maj_version} - Extras",
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6",
  }
  yumrepo { "centosplus":
    baseurl  => "${::centos_base_url}/${::os_maj_version}/centosplus/${::architecture}",
    descr    => "CentOS-${::os_maj_version} - Plus",
    enabled  => 0,
    gpgcheck => 1,
    gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6",
  }
  yumrepo { "contrib":
    baseurl  => "${::centos_base_url}/${::os_maj_version}/contrib/${::architecture}",
    descr    => "CentOS-${::os_maj_version} - Contrib",
    enabled  => 0,
    gpgcheck => 1,
    gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6",
  }
}

