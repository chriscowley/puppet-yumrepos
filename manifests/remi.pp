class yumrepos::remi {
  yumrepo { "remi":
    mirrorlist => "http://rpms.famillecollet.com/enterprise/${::os_maj_version}/remi/mirror",
    descr    => "Les RPM de remi pour Enterprise Linux 6 - ${::architecture}",
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-ChrisCowley",
    require  => File["/etc/pki/rpm-gpg/RPM-GPG-KEY-ChrisCowley"],
  }

  file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-remi":
    ensure => present,
    owner  => "root",
    group  => "root",
    mode   => "0644",
    source => "puppet:///modules/yumrepos/RPM-GPG-KEY-remi",
  }

  yumrepos::rpm_gpg_key {"RPM-GPG-KEY-remi":
    path     => "/etc/pki/rpm-gpg/RPM-GPG-KEY-remi",
    require  => File["/etc/pki/rpm-gpg/RPM-GPG-KEY-remi"]
  }
}

