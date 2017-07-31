Rails.application.routes.draw do
  get '/game', to: 'games#word'
  get '/score', to: 'games#score'
end
