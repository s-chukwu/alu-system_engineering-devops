# Increase Nginx's open-file limit
exec { 'fix--for-nginx':
  path    => '/usr/bin:/usr/sbin:/bin:/sbin',
  command => 'sed -i "/ULIMIT=/c\ULIMIT='\''-n 4096'\''" /etc/default/nginx; service nginx restart',
}
