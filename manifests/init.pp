class r_repo {

  class { 'apache':
    default_mods        => false,
    default_confd_files => false,
  }

  apache::vhost { 'repo.demo.lan':
    port    => '80',
    docroot => '/var/www/repos',
  }
}
