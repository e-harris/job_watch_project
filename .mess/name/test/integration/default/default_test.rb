# InSpec test for recipe name::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end


describe package 'python3-pip' do
  it { should be_installed }
end

describe package('pytest'), :skip do
  it { should be_installed }
  its('version') { should cmp > '5' }
end

describe directory '/home/vagrant/Downloads' do
  it { should create_directory }
end
