# Class: openssh::server::params
#
# This class defines default parameters used by the main module class openssh::server
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to openssh::server class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class openssh::server::params {

  ### Application related parameters

  $package_name = $::operatingsystem ? {
    default => 'openssh-server'
  }

  $enabled = true

}
