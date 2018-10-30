class GamesController < ApplicationController
  # Add your GamesController code here

  before_action :set_game, only: [:show, :update]
  def index
    @games = Game.all
    render json: @games
  end

  def new
    @game = Game.new
  end

  def create
    game = Game.create(game_params)
    render json: game, satus: 201
  end

  def show
    render json: @game
  end

  def update
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @game }
    end
  end

  private

  def game_params
    params.permit(state: [])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
