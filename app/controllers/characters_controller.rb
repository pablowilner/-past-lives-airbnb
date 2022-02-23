class CharactersController < ApplicationController
  before_action :set_character, only: %i[ show edit update destroy ]

  def index
    @characters = policy_scope(Character)
    @user = current_user

    @markers = @characters.geocoded.map do |character|
      {
        lat: character.latitude,
        lng: character.longitude,
        info_window: render_to_string(partial: "info_window", locals: { character: character }),
        image_url: helpers.asset_url("mind-journey-logo.jpg")
      }
    end
  end

  def new
    @character = Character.new
    authorize @character
  end

  def edit
    authorize @character
  end

  def update
    authorize @character
    if @character.update(character_params)
      redirect_to character_path(@character)
    else
      render :edit
    end
  end

  def show
    authorize @character
  end

  def create
    @character = Character.new(character_params)
    @character.user = current_user
    authorize @character
    if @character.save
      redirect_to character_path(@character.id)
    else
      render :new
    end
  end

  def destroy
    authorize @character
    @character.destroy
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :title, :description, :profession, :location, :historical_period, :price, :photo, :address)
  end
end
