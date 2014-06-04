class yumrepos {
  if $osfamily == 'RedHat' {
    include yumrepos::epel
    include yumrepos::puppetlabs
  } else {
    notice ("Your operating system ${::operatingsystem} is not supported for EPEL repositories")
  }
}
