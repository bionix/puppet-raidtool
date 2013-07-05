class raid::threeware {
  file { '/usr/sbin/tw_cli':
    ensure => present,
    source => 'puppet:///modules/raidtool/threeware/tw_cli',
    owner => root,
    group => root,
    mode => 0555,
  }
}
