require 'sinatra'

get '/:name' do
  text = "Hello, #{params[:name]}"
  text << " your age is #{params[:age]}" if params[:age]
  text
end

get '/*' do
  "You passed in #{params[:splat]}"
end

get '/specific' do
  "You'll never, ever see me."
end