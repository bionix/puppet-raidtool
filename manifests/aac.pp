class raid::aac {
  package { 'libstdc++5':
    ensure => latest
  }

  file { '/usr/sbin/arcconf':
    ensure => present,
    source => 'puppet:///modules/raidtool/arcconf/arcconf',
    owner => root,
    group => root,
    mode => 0555,
  }
}
