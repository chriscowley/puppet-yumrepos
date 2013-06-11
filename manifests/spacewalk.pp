class yumrepos::spacewalk {
  yumrepo { "Spacewalk":
    baseurl  => "http://yum.spacewalkproject.org/1.9/RHEL/${::os_maj_version}/${::architecture}",
    enabled  => 1,
    gpgcheck => 1,
    gpgkey   => "http://yum.spacewalkproject.org/RPM-GPG-KEY-spacewalk-2012",
    require  => Yumrepo['jpackage-generic'],
  }

  yumrepo { "jpackage-generic":
    mirrorlist => "http://www.jpackage.org/mirrorlist.php?dist=generic&type=free&release=5.0",
    gpgkey     => "http://www.jpackage.org/jpackage.asc",
    enabled  => 1,
    gpgcheck => 1,
  }
}

