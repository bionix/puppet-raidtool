require 'spec_helper'

describe 'raidtool::hardware::lsi', :type => :class do

  let(:facts) {
    {
    :fqdn => 'somehost.domaindomain.org',
  }
  }

  it "should have a folder /opt on the machine 2" do
    should contain_file('/opt').with( 
     'ensure' => 'directory'
    )
  end
  it "should have the right debfile in /opt on the machine" do
    should contain_file('/opt/megacli.deb').with( 
     'ensure' => 'present',
     'owner' => 'root',
     'group' => 'root',
     'mode' => '0550',
     'require' => 'File[/opt]'
    )
  end
  it "should have the latest package installed" do
    should contain_package('megacli').with(
      'ensure' => 'latest',
      'source' => '/opt/megacli.deb',
      'provider' => 'dpkg',
      'require' => ['File[/opt]', 'File[/opt/megacli.deb]']
    )
  end
end
