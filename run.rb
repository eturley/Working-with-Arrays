require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/years' do

  # code!
  @yearText = {
  	:content => "<p>I was born in April of 1996 and have been alive for 20 years.</p>"
  }
  @years = (1996..2016).to_a

  erb :years, layout: :main
end

get '/states' do
  # code!
  #@stateText {
  #	:content => "<p>I have visited the following states: </p>"
  #}
  @stateText = {
  	:content =>"<p>I have visited the following states:</p>"
  }
  @states = ["Washington", "California", "Oregon", "Indiana", "New Jersey", "Arizona"]
  @states.sort
  @states.sort! #permanent sort
  erb :states, layout: :main
end
