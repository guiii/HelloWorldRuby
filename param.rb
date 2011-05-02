require "rubygems"
require "sinatra"

get "/echo" do
  erb :form
end

post "/echo" do
  string = params[:string]
  
  string.upcase! if params[:up]
  string.reverse! if params[:reverse]
  string.downcase! if params[:low]
  
  string
end  