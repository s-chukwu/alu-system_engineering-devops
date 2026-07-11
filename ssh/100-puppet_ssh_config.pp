#!/usr/bin/env bash
# puppet config

file_line { 'Turn off passwd auth':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
  match  => '^\s*PasswordAuthentication\s+(yes|no)',
}

file_line { 'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
  match  => '^\s*IdentityFile\s+.*',
}
