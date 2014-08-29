class yumrepos::epel {
  yumrepo { "epel":
    mirrorlist     => "https://mirrors.fedoraproject.org/metalink?repo=epel-${::os_maj_version}&arch=${::architecture}",
    baseurl        => "absent",
    failovermethod => "priority",
    enabled        => 1,
    gpgcheck       => 1,
    gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::os_maj_version}",
    require        => File["/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::os_maj_version}"],
  }

  file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::os_maj_version}":
    ensure => present,
    owner  => "root",
    group  => "root",
    mode   => "0644",
    source => "puppet:///modules/yumrepos/RPM-GPG-KEY-EPEL-${::os_maj_version}",
  }

  yumrepos::rpm_gpg_key {"RPM-GPG-KEY-EPEL-${::os_maj_version}":
    path    => "/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::os_maj_version}",
    require => File["/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-${::os_maj_version}"],
  }
}
