class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @review = Review.new
    @user = current_user
    @characters = @user.characters
    @bookings = @user.bookings
  end
end
