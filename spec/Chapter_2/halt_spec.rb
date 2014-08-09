require 'spec_helper'

describe "Halt method" do
  it "returns a 500 error" do
    get '/halt'
    expect(last_response.status).to eq 500
  end

  it "returns a 500 error" do
    get '/halt'
    expect(last_response.body).not_to eq "You will not see this output."
  end
end