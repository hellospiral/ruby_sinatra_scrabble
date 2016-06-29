require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/points') do
  @word = params.fetch('word')
  # @value = params.fetch('word').scrabble()
  # @value = @word.scrabble()
  erb(:points)
end
