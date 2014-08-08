require 'spec_helper'
# require 'pry'
require_relative '../Chapter 2/parameters.rb'
include RSpecMixin

describe "parameters.rb" do
  it "gets the thing" do
      get "/iain"
      expect(last_response).to be_ok
      expect(last_response.body).to eq "Hello, iain"
  end
end