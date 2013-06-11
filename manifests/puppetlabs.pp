class yumrepos::puppetlabs {
  yumrepo { "puppetlabs-products":
    baseurl  => "http://yum.puppetlabs.com/el/${::os_maj_version}/products/${::architecture}",
    descr    => "Puppet Labs Products El ${::os_maj_version} - ${::architecture}",
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs",
    require  => File["/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs"],
  }
  yumrepo { "puppetlabs-deps":
    baseurl  => "http://yum.puppetlabs.com/el/${::os_maj_version}/dependencies/${::architecture}",
    descr    => "Puppet Labs Dependcies El ${::os_maj_version} - ${::architecture}",
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs",
    require  => File["/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs"],
  }

  file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs":
    ensure => present,
    owner  => "root",
    group  => "root",
    mode   => "0644",
    source => "puppet:///modules/yumrepos/RPM-GPG-KEY-puppetlabs",
  }

  yumrepos::rpm_gpg_key {"RPM-GPG-KEY-puppetlabs":
    path     => "/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs",
    require  => File["/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs"]
  }
}

