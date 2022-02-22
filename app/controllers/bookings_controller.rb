class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @studio = Studio.find(params[:studio_id])
    @booking.studio = @studio
    if @booking.save
      redirect_to studio_path(@studio)
    else
      render "studios/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to studio_path(@booking.studio)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
