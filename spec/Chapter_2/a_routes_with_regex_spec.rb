require 'spec_helper'
require_relative '../../Chapter_2/aroutes_with_regex.rb'

describe "Regex routes" do
  describe "with 'greedy' parameter" do
    it "matches regex route" do
      get '/greedy'
      expect(last_response.body).to eq "You got caught in the greedy route!"
    end
  end

  describe "with 'speedy' parameter" do
    it "matches regex route" do
      get '/speedy'
      expect(last_response.body).to eq "You got caught in the greedy route!"
    end
  end
end