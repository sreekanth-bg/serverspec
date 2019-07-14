require 'spec_helper'

describe 'REQ:1,2' do

  describe port(8080) do
    it { should be_listening }
  end

end
