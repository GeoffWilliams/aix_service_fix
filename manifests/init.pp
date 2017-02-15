# Aix_service_fix
#
# Fix the service provider on AIX WRT: PUP-7179 (stop non-existant service)
class aix_service_fix {
  file { "/opt/puppetlabs/puppet/lib/ruby/vendor_ruby/puppet/provider/service/src.rb":
    ensure => file,
    owner  => "root",
    group  => "system",
    mode   => "0644",
    source => "puppet:///modules/aix_service_fix/src.rb",
  }
}
