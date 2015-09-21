class ssh::server::hostkeys($hostkeys = {}) {
  
  # Merge hashes from multiple layer of hierarchy in hiera
  $hiera_hostkeys = hiera_hash("${module_name}::server::hostkeys", undef)

  $fin_hostkeys = $hiera_hostkeys ? {
    undef   => $hostkeys,
    ''      => $hostkeys,
    default => $hiera_hostkeys,
  }

  create_resources('::ssh::server::host_key', $fin_hostkeys)
}
