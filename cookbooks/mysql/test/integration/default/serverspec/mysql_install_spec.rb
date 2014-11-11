require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "MySQL Server Configured Server" do

  it "is listening on port 3306" do
    expect(port(3306)).to be_listening
  end

  it "has a running service of mysql" do
    expect(service("mysql")).to be_running
  end

end