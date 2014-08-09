require 'spec_helper'

describe "passing routes" do
  it "passes /crap" do
    get "/crap"
    expect(last_response.body).to eq "You got caught in the crap route!"
  end

  it "matches /trap" do
    get "/trap"
    expect(last_response.body).to eq "You must have passed to me!"
  end
end