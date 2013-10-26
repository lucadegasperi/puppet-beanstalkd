class beanstalkd {
  package { 'beanstalkd':
    ensure => present,
  }

  service { 'beanstalkd':
    ensure => running,
    require => Package['beanstalkd'],
    restart => '/etc/init.d/beanstalkd restart',
    hasstatus => true,
  }
}