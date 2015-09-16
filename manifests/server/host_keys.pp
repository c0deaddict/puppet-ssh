class ssh::server::host_keys($host_keys) {
  create_resources('::ssh::server::host_key', $host_keys)
}
