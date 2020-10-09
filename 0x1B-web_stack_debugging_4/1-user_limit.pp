# Allowing holberton user entrance.

exec { 'change-hard-limit':
    command => "/bin/sed -i /etc/security/limits.conf -e 's/hard nofile [0-9]\+/hard nofile 4000/g'"
}

exec { 'change-soft-limit':
    command => "/bin/sed -i /etc/security/limits.conf -e 's/soft nofile [0-9]\+/soft nofile 3000/g'"
}
