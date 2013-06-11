class yumrepos::mirror {
  package { 'lftp':
    ensure    => latest,
    subscribe => Package['mrepo']
  }
  package { 'createrepo':
    ensure    => latest,
    subscribe => Package['mrepo']
  }
  package { 'mrepo':
    ensure  => latest,
    require => Class['yumrepos::epel']
  }

  file { "/etc/mrepo.conf":
    source => "puppet:///modules/yumrepos/mrepo.conf",
    ensure => present,
    owner  => "root",
    group  => "root",
    mode   => "0600",
  }

  file { "/etc/mrepo.conf.d/centos6.conf":
    source  => "puppet:///modules/yumrepos/mrepo-centos6.conf",
    ensure  => present,
    owner   => "root",
    group   => "root",
    mode    => "0600",
    require => File['/etc/mrepo.conf'],
  }
}
