class r_repo {

  #----------------
  # Apache server:
  #----------------

  class { 'apache': }

  apache::vhost { 'repo01.demo.lan':
    port    => '80',
    docroot => '/var/www/repos',
  }

  #-------------------------------
  # Stuff to manage repositories:
  #-------------------------------

  package { [ 'yum-utils', 'createrepo', 'repoview' ]:
    ensure => latest,
  }

  file { '/usr/local/bin/syncrepo':
    ensure  => present,
    content => template("${module_name}/syncrepo.erb"),
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
  }
}
