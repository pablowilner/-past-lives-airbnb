class BookingsController < ApplicationController
  def new
    @character = Character.find(params[:character_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @character = Character.find(params[:character_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.total_price = total_price_calc
    @booking.character = @character

    if @booking.save
      redirect_to character_path(@character), notice: "Your booking was saved"
    else
      render "characters/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to character_path(@booking.character)
    @booking.user = current_user
  end

  private

  def total_price_calc
    @character.price * (@booking.end_date - @booking.start_date).to_f
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :character_id,)
  end
end
