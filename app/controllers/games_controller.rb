require 'game'

class GamesController < ApplicationController
  def word
    @grid = generate_grid(15).join('-')
    @start_time = Time.now

    if session[:number_of_games]
      session[:number_of_games] += 1
    else
      session[:number_of_games] = 1
    end
  end

  def score
    @number_of_games = session[:number_of_games]
    attempt = params[:shot]
    grid = params[:grid].split('-')
    start_time = params[:start].to_time
    @score = run_game(attempt, grid, start_time, Time.now)
  end
end
