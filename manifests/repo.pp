# Install the Redhat / CentOS repository
class sysdig::repo {
  yumrepo { 'draios':
    baseurl  => 'http://download.draios.com/stable/rpm/$basearch',
    descr    => 'Sysdig repository by Draios',
    enabled  => 1,
    gpgcheck => 0,
  }
}