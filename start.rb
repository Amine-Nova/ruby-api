require 'sinatra'

# Set the server to listen on all network interfaces
set :bind, '0.0.0.0'
# Set the port to 80
set :port, 80

get '/' do
  "Your API is now running on Port 80!"
end