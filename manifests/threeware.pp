# This class install all 3ware raid controllers depending stuff
class raidtool::threeware {
  file { '/usr/sbin/tw_cli':
    ensure  => present,
    source  => 'puppet:///modules/raidtool/threeware/tw_cli',
    owner   => root,
    group   => root,
    mode    => '0555',
  }
}
