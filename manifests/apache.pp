class r_repo::apache inherits r_repo {

  if $apache {

    include ::apache

    ::apache::vhost { 'repo01.demo.lan':
      port    => '80',
      docroot => '/var/www/repos',
    }
  }
}
