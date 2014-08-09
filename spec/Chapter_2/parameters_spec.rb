require 'spec_helper'

describe "parameters.rb" do
  it "response body is correct" do
    get "/iain"
    expect(last_response).to be_ok
    expect(last_response.body).to eq "Hello, iain"
  end

  describe "with query string" do
    it "response body is correct" do
      get "/iain?age=111"
      expect(last_response).to be_ok
      expect(last_response.body).to eq "Hello, iain your age is 111"
    end
  end

  describe "with splat route matcher" do
    it "response body is correct" do
      get "/iain/something"
      expect(last_response).to be_ok
      expect(last_response.body).to eq "You passed in [\"iain/something\"]"
    end
  end

  describe "route after splat" do
    it "is not matched" do
      get "/specific"
      expect(last_response).to be_ok
      expect(last_response.body).to eq "Hello, specific"
    end
  end
end
