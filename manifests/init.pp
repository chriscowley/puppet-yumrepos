class yumrepos (
    $centos_baseurl = $yumrepos::params::centos_baseurl,
) {
  if $osfamily == 'RedHat' {
    include yumrepos::epel
    include yumrepos::puppetlabs
  } else {
    notice ("Your operating system ${::operatingsystem} is not supported for EPEL repositories")
  }
}
