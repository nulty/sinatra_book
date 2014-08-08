require 'spec_helper'
require_relative '../../Chapter 2/parameters_login.rb'
include RSpecMixin

describe "parameters.rb" do
  describe "/login" do
    it "parameters are correct" do
      post "/login", username: "myuser", password: "mypass"
      expect(last_response).to be_ok
      expect(last_request.params).to eq({"username"=> "myuser", "password" => "mypass"})
    end
  end

  describe "/users/:id" do
    before(:each) do
      User = Struct.new("User", :first_name, :last_name)
      User.should_receive(:find).with("1").and_return(User.new("username"=> "myuser", "password" => "mypass"))
      User.any_instance.should_receive(:save).and_return(true)
    end

    it "parameters are correct" do
      put "/users/1"
      expect(last_response).to be_ok
    end
  end
end