# BATS test file to run after executing 'examples/init.pp' with puppet.
#
# For more info on BATS see https://github.com/sstephenson/bats

# Tests are really easy! just the exit status of running a command...
@test "file verified by checksum" {
  [[ $(sha1sum /opt/puppetlabs/puppet/lib/ruby/vendor_ruby/puppet/provider/service/src.rb | awk '{print $1}') == "c89bd88fd486a890cc7f6ee8cdbd8d8eb5dc67a5" ]]
}
