package { [ "rpm-build", "redhat-rpm-config" ]:
  ensure => latest
}

file { "/var/node":
  ensure => directory,
  recurse => true
}

file { "/var/node/hello-console.js":
  content => template("hello-console.js"),
  recurse => true
}

