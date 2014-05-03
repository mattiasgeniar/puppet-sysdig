# == Class: sysdig
#
# This installs the sysdig system debugging tool.
#
# === Parameters
#
# None.
#
# === Variables
#
# None.
#
# === Examples
#
#  class { sysdig:
#
#  }
#
# Or:
#
#  include sysdig
#
# === Authors
#
# Mattias Geniar <m@ttias.be>
#
#
class sysdig {
  case $::operatingsystem {
    'RedHat', 'CentOS', 'Fedora': {
      # Install the Yum repo
      class { 'sysdig::repo':
        before  => Package [ 'sysdig' ],
      }
    }
    default: {
      # No extra's needed?
    }
  }

  package { 'sysdig':
    ensure  => present,
  }
}
