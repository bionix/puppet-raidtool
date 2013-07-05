class raid::hp {
  file { '/opt':
    ensure => directory
  }

  file { '/opt/hpacucli.deb':
    ensure => present,
    source => "puppet:///modules/raidtool/hp/hpacucli_9.40-13_amd64.deb",
    owner => root,
    group => root,
    mode => 0550,
    require => File['/opt']
  }

  package { 'hpacucli':
    provider => dpkg,
    ensure => latest,
    source => "/opt/hpacucli.deb",
    require => File['/opt', '/opt/hpacucli.deb']
  }
}
