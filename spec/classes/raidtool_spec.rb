require 'spec_helper'

describe 'raidtool', :type => :class do

  context "with supported facter version" do
    let(:facts) {
      {
      :fqdn => 'somehost.domaindomain.org',
      :facterversion => '1.6.3',
    }
    }

    it "detect facterversion" do
      should include_class('raidtool::detect')
    end
  end
end
