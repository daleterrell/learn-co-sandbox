require 'sinatra'

class App < Sinatra::BASE 
  
  get '/' do
    "Hello, World!"
  end
  
end