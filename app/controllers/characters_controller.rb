class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def update
  end 
end
