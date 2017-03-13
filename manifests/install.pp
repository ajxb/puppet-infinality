# infinality::install
#
# Handles the ppa setup and the Infinality font rendering packages
class infinality::install () {
  include apt
  apt::ppa { 'ppa:no1wantdthisname/ppa': }

  $packages = [ 'fontconfig-infinality', 'libcairo-gobject2', 'libcairo2', 'libfreetype6' ]

  package { $packages:
    ensure => 'latest',
  }

  Apt::Ppa['ppa:no1wantdthisname/ppa']
    ~> Class['apt::update']
    -> Package[ $packages ]
}
