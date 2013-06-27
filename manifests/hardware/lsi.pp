class raidtool::hardware::lsi {
  file { '/opt':
    ensure => directory
  }
  file { '/opt/megacli.deb':
    ensure => present,
    source => "puppet:///modules/raidtool/lsi/megacli_8.07.10-2_all.deb",
    owner => root,
    group => root,
    mode => 0550,
    require => File['/opt']
  }
  package { "megacli":
    ensure  =>  latest,
    source => "/opt/megacli.deb",
    provider => dpkg,
    require => File['/opt', '/opt/megacli.deb']
  }
  case $architecture {
    amd64: {
      file { '/usr/sbin/megacli':
        ensure => link,
        target => '/opt/MegaRAID/MegaCli/MegaCli64'
      }
    }
    i386: {
      file { '/usr/sbin/megacli':
        ensure => link,
        target => '/opt/MegaRAID/MegaCli/MegaCli'
      }
    }
    default: {
      notice "Unsupported architecture - $::architecture"
    }
  }
}
