require 'spec_helper'
describe Reevoo::Client do
  it "should be setup with a trkref and password"
  
  describe 'products' do
    it 'should return an array of products' do
      client = Reevoo::Client.new('jcg', 'Cojewpid8')
      client.products.should be_true
    end
  end
end 
    
    # before(:each) do
    #   FakeWeb.register_uri(:any, "https://deploytracking.heroku.com/deploys", :body => "response for any HTTP method")
    # end
    # it "should post to deploytracking.com" do
    #   DeployTracking.notify('api_key', {}).should be_true
    # end