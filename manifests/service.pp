class postfix::service {
  service { 'postfix':
    ensure    => running,
    enable    => true,
    hasstatus => true,
    restart   => '/bin/kill `/bin/cat /var/lib/postfix/master.lock`; /etc/init.d/postfix restart',
  }
}
