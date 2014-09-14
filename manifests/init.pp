class r_repo {

  class { 'apache': }

  apache::vhost { 'repo01.demo.lan':
    port    => '80',
    docroot => '/var/www/repos',
  }

  package { [ 'yum-utils', 'createrepo' ]:
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
