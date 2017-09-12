require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx.rb')


game = Game.new()
get('/') do
   @display = game.retrieve_riddle
  erb(:input)
end

post ('/output') do
  # @answer = params.fetch("answer")
  # answer_check = game.test_riddle(@answer)
  if game.test_riddle(params.fetch("answer"))
    erb(:success)
  else
    erb(:failure)
  end
end

# @success = success_arr.sample
#   erb(:success)
# @continue = erb(:output)
# @failure = erb(:failure)
