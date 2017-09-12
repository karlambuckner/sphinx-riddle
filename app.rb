require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx.rb')

get('/') do
  erb(:input)
end

@success = success_arr.sample
  erb(:success)
@continue = erb(:output)
@failure = erb(:failure)
