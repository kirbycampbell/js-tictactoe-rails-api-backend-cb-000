class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
  end

  def new
    @game = Game.new()
  end

  def create
    game = Game.create
    render json: game, satus: 201
  end

  def show

  end

  def update

  end


end
