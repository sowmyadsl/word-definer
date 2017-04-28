require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')
require('pry')

# / => / word/:id 
get('/') do
  @words = Word.all()
  erb(:index)
end

post('/') do
  word = Word.new({:word => params['word']})
  word.save()
  @words = Word.all()
  erb(:index)
end
