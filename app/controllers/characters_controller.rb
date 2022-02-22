class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def update
  end 

  def show
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to character_path(@character)
    else
      render :new
    end
  end


  def edit
    @character = Character.find(params[:id])
  end

  def destroy
    @character = Character.find(params[:id])
    @character.delete
  end



  private

  def character_params
    params.require(:character).permit(:name, :title, :description, :profession, :location, :historical_period, :price)
  end


end
