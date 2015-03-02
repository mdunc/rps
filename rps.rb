require 'sinatra'
require 'json'

get '/hi' do
  "Hello I'm Chiaki!"
end

get '/bye' do
  "See you later!"
end

get '/computer_choice' do
  ["rock", "paper", "scissors"].sample.to_json
end

get '/check/:user_choice/:computer_choice' do
  "User picked #{params[:user_choice]} and computer picked #{params[:computer_choice]}"
end
