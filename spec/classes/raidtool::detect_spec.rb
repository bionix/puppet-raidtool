require 'spec_helper'

describe 'raidtool::detect', :type => :class do

  context "with supported operatingsystem version Debian" do
    let(:facts) {
      {
      :fqdn => 'somehost.domaindomain.org',
      :operatingsystem => 'Debian',
    }
    }

    it "detect operatingsystem Debian" do
      should include_class('raidtool::hardware')
    end
  end
  context "with unsupported operatingsystem version" do
    let(:facts) {
      {
      :fqdn => 'somehost.domaindomain.org',
      :operatingsystem => 'RedHat',
    }
    }

    it "detect unsupported operatingsystem" do
      should_not include_class('raidtool::hardware')
    end
  end
  context "with supported operatingsystem version Ubuntu" do
    let(:facts) {
      {
      :fqdn => 'somehost.domaindomain.org',
      :operatingsystem => 'Ubuntu',
    }
    }

    it "detect supported operatingsystem Ubuntu" do
      should include_class('raidtool::hardware')
    end
  end
end
