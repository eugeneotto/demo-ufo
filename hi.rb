require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  "hello!\n"
end
