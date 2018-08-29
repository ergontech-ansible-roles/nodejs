require 'spec_helper'

describe file('/etc/apt/sources.list.d/deb_nodesource_com_node_8_x.list') do
  it { should be_file }
end

describe command('which npm') do
    its(:exit_status) { should eq 0 }
end

describe command('which yarn') do
    its(:exit_status) { should eq 0 }
end
