exec { 'increase-file-limits':
  command => '/bin/bash -c "echo -e \'holberton soft nofile 4096\nholberton hard nofile 8192\' >> /etc/security/limits.conf"',
  path    => ['/bin', '/usr/bin'],
  unless  => '/bin/grep -q "holberton soft nofile" /etc/security/limits.conf',
}

exec { 'apply-sysctl':
  command => '/sbin/sysctl -p',
  path    => ['/sbin', '/bin', '/usr/bin'],
  subscribe => Exec['increase-file-limits'],
}
