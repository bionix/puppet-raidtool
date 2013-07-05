require 'spec_helper'

describe 'raidtool', :type => :class do

  context "with supported facter version 1.6.x" do
    let(:facts) {
      {
      :fqdn => 'somehost.domaindomain.org',
      :facterversion => '1.6.3',
    }
    }

    it "detect facterversion 1.6.x" do
      should include_class('raidtool::detect')
    end
  end
  context "with unsupported facter version" do
    let(:facts) {
      {
      :fqdn => 'somehost.domaindomain.org',
      :facterversion => '1.4.3',
    }
    }

    it "detect unsupported facterversion" do
      should_not include_class('raidtool::detect')
    end
  end
  context "with supported facter version 1.7.x" do
    let(:facts) {
      {
      :fqdn => 'somehost.domaindomain.org',
      :facterversion => '1.7.1',
    }
    }

    it "detect supported facterversion 1.7.x" do
      should include_class('raidtool::detect')
    end
  end
end
