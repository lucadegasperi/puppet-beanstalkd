class beanstalkd {
  package { 'beanstalkd':
    ensure => present,
  }

  service { 'beanstalkd':
    ensure => 'running',
    require => Package['beanstalkd'],
    start => '/usr/bin/beanstalkd'
  }
}