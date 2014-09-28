class r_repo::repos inherits r_repo {

  if $repos {

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
}
