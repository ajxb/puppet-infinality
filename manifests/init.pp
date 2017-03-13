# Class: infinality
#
# Manage installation of the Infinality font rendering packages on Ubuntu, installing from ppa
#
# @example Declaring the class
#   include infinality
class infinality () {
  if $facts['operatingsystem'] !=  'Ubuntu' {
    fail("${facts['operatingsystem']} not supported")
  }

  include infinality::install
  contain infinality::install
}
