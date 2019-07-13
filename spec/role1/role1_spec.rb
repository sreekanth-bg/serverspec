require 'spec_helper'

describe file('/etc/my.cnf') do
    it { should contain "server-id = #{property[:server_id]}" }

  describe port(8080) do
    it { should be_listening }
  end

end
