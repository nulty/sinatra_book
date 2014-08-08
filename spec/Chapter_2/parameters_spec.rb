require 'spec_helper'
require_relative '../../Chapter_2/parameters.rb'
include RSpecMixin

describe "parameters.rb" do
  it "response body is correct" do
      get "/iain"
      expect(last_response).to be_ok
      expect(last_response.body).to eq "Hello, iain"
  end
end