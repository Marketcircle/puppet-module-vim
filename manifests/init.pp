class vim {
  if ($operatingsystem == "Ubuntu") or ($operatingsystem == "Debian") {
    package { "vim-nox":
      ensure => present,
    }
  }
  # Syntax checker for python used with the syntastic vim plugin:
  package { "pyflakes":
    ensure => present,
  }

  # Ignore git files for bundles as git submodules:
  File { ignore => '.git' }

  file { "/etc/vim/vimrc":
    content => template("vim/vimrc.erb"),
  }

  file {'/usr/share/vim/vimcurrent/autoload':
    source => "puppet:///modules/vim/autoload",
    recurse => true,
    mode => 644,
    require => File["/etc/vim/vimrc"],
  }

  file {'/usr/share/vim/vimcurrent/bundle':
    source => "puppet:///modules/vim/bundle",
    recurse => true,
    mode => 644,
    require => File["/etc/vim/vimrc"],
  }
}
