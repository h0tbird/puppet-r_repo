class r_repo {

  class { 'apache': }

  apache::vhost { 'repo01.demo.lan':
    port    => '80',
    docroot => '/var/www/repos',
  }

  package { 'yum-utils':
    ensure => latest,
  }
}
