require 'sinatra'
require 'json'

VALID_CHOICES = ['rock', 'paper', 'scissors']

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


  case params[:user_choice]
  when "rock"
    case params[:computer_choice]
    when "paper"
      winner = "computer"
    when "scissors"
      winner = "user"
    else
      winner = "tie"
    end
  when "paper"
    case params[:computer_choice]
    when "scissors"
      winner = "computer"
    when "rock"
      winner = "user"
    else
      winner = "tie"
    end
  when "scissors"
    case params[:computer_choice]
    when "paper"
      winner = "user"
    when "rock"
      winner = "computer"
    else
      winner = "tie"
    end
  end

  winner.to_json

end
