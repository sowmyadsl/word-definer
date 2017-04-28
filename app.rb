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

post('/clear') do
  Word.clear
  redirect('/')
end

post('/') do
  word = Word.new({:word => params['word']})
  word.save()
  @words = Word.all()
  erb(:index)
end

get '/word/:id' do
  @word = Word.find(params['id'].to_i)
  erb(:word_definition)
end

post '/word/:id' do
  word = Word.find(params['id'].to_i)
  new_define = Definition.new({:definition => params.fetch('define')})
  word.add_definition(new_define)
  @word = word
  erb(:word_definition)
end
