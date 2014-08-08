require 'sinatra'

get '/:name' do
  text = "Hello, #{params[:name]}"
  text << " your age is #{params[:age]}" if params[:age]
  text
end