class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
  end

  def new
    @game = Game.new()
  end

  def create

  end

  def show

  end

  def update

  end


end
