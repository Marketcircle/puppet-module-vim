Puppet Vim Module
=================

Module for configuring vim.

Tested on Debian GNU/Linux 6.0 Squeeze and Ubuntu 10.4 LTS with
Puppet 2.6. Patches for other operating systems are welcome.


Installation
------------

Clone this repo to a vim directory under your Puppet modules directory:

    git clone git://github.com/uggedal/puppet-module-vim.git vim

You also need to initialize the git submodules used by this module:

    git submodule update --init

If you don't have a Puppet Master you can create a manifest file
based on the notes below and run Puppet in stand-alone mode
providing the module directory you cloned this repo to:

    puppet apply --modulepath=modules test_vim.pp


Usage
-----

If you include the vim class vim will be installed with a vim configuration
tailored to my personal preferences: 

    include vim
