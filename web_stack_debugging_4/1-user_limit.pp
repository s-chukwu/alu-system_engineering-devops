# Raise the open-file limits for the holberton user.
exec { 'change-os-configuration-for-holberton-user':
  command => '/bin/sed -i "/holberton/s/[45]$/4096/" /etc/security/limits.conf',
}
