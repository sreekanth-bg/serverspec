require 'spec_helper'

describe file('/etc/my.cnf') do
    it { should contain "server-id = #{property[:server_id]}" }

  describe file('/home/sree') do
    it { should be_directory }
  end

end
