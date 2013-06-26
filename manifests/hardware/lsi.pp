class raid::hardware::threeware {
  file { '/usr/sbin/megactl':
    ensure => present,
    source => "puppet:///modules/raidtool/lsi/megactl",
    owner => root,
    group => root,
    mode => 0555,
  }
}
