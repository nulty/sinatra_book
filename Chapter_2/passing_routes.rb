require 'sinatra'

before do
  content_type :txt
end

get %r{/(c|t)rap} do
  pass if request.path =~ /\/trap/
  "You got caught in the crap route!"
end

get '/trap' do
  "You must have passed to me!"
end
