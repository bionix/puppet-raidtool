# This class installs all adaptec raid controllers depending stuff
class raidtool::aac {
  package { 'libstdc++5':
    ensure => latest,
  }

  file { '/usr/sbin/arcconf':
    ensure  => present,
    source  => 'puppet:///modules/raidtool/arcconf/arcconf',
    owner   => root,
    group   => root,
    mode    => '0555',
  }
}
