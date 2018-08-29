require 'spec_helper'

describe file('/etc/apt/sources.list.d/nodesource.list') do
  it { should be_file }
end

describe command('which npm') do
    its(:exit_status) { should eq 0 }
end

describe command('which yarn') do
    its(:exit_status) { should eq 0 }
end
