class yumrepos::pydio {
  yumrepo { "pydio-stable":
    baseurl => "http://dl.ajaxplorer.info/repos/el${::os_maj_version}/pydio-stable",
    enabled => 1,
    gpgcheck => 1,
    gpgkey => "http://dl.ajaxplorer.info/repos/charles@ajaxplorer.info.gpg.key",
  }
}
