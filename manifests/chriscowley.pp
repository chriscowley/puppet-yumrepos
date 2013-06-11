class yumrepos::chriscowley {
  yumrepo { "chriscowley":
    baseurl  => "http://yum.chriscowley.me.uk/el/${::os_maj_version}/${::architecture}",
    descr    => "Chris Cowley's Packages for Enterprise Linux ${::os_maj_version} - ${::architecture}",
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-ChrisCowley",
    require  => File["/etc/pki/rpm-gpg/RPM-GPG-KEY-ChrisCowley"],
  }

  file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-ChrisCowley":
    ensure => present,
    owner  => "root",
    group  => "root",
    mode   => "0644",
    source => "puppet:///modules/yumrepos/RPM-GPG-KEY-ChrisCowley",
  }

  yumrepos::rpm_gpg_key {"RPM-GPG-KEY-ChrisCowley":
    path     => "/etc/pki/rpm-gpg/RPM-GPG-KEY-ChrisCowley",
    require  => File["/etc/pki/rpm-gpg/RPM-GPG-KEY-ChrisCowley"]
  }
}

