class yumrepos::gluster {
  yumrepo { "glusterfs-epel":
    baseurl  => "http://download.gluster.org/pub/gluster/glusterfs/3.3/3.3.1/EPEL.repo/epel-${::os_maj_version}/${::architecture}",
    descr    => "name=GlusterFS is a clustered file-system capable of scaling to several petabytes.",
    enabled  => 1,
    gpgcheck => 0,
  }
  yumrepo { "glusterfs-swift-epel":
    baseurl  => "http://download.gluster.org/pub/gluster/glusterfs/3.3/3.3.1/EPEL.repo/epel-${::os_maj_version}/${::architecture}",
    descr    => "name=GlusterFS is a clustered file-system capable of scaling to several petabytes.",
    enabled  => 1,
    gpgcheck => 0,
  }
  yumrepo { "glusterfs-source-epel":
    baseurl  => "http://download.gluster.org/pub/gluster/glusterfs/3.3/3.3.1/EPEL.repo/epel-${::os_maj_version}/${::architecture}",
    descr    => "name=GlusterFS is a clustered file-system capable of scaling to several petabytes.",
    enabled  => 1,
    gpgcheck => 0,
  }

}

