require 'spec_helper'

describe 'REQ:2' do

  describe file('/home/tempuser/temp') do
    it { should be_directory }
  end

end
