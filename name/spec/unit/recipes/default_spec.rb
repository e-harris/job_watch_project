#
# Cookbook:: name
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'name::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end

  it 'Should install pip3' do
    expect(chef_run).to install_package 'python3-pip'
  end

  # it 'Should run requirements.txt', :skip do
  #   expect(chef_run).to pip3install '/home/ubuntu/requirements.txt'
  # end

  it "Should create an app directory" do
    expect(chef_run).to create_directory '/home/vagrant/app'
  end

  it 'creates the Downloads folder with the correct permissions' do
    expect(chef_run).to create_directory('/home/vagrant/Downloads').with(mode: '777')
  end


end
