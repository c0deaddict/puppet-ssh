class ssh::server::hostkeys($hostkeys) {
  create_resources('::ssh::server::hostkey', $hostkeys)
}
