# require_relative '../models/word'
get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  word = params[:word]
  # @result = Word.anagram(word)
   result = Word.anagram(word)
   "Anagram(s) for #{word} is/are #{result}"

end

# get '/makan' do
#   # name = input(string)
#   "Hello word"
#   end