require 'spec_helper'
describe 'aix_service_fix' do
  context 'with default values for all parameters' do
    it { should compile }
    it { should contain_class('aix_service_fix') }
  end
end
