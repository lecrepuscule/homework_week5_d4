class GamesController < ApplicationController
protect_from_forgery

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    # binding.pry
    @game = Game.new(game_params)
    if @game.save 
      redirect_to("/games/#{@game.id}")
    else
      render :new
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(game_params)
      redirect_to("/games/#{@game.id}")
    else
      render :edit
    end
  end

  def delete
  end


  private

  def game_params
    params.require(:game).permit(:name, :genre, :photo_url, :release_date, :studio, :rating)
  end


end
