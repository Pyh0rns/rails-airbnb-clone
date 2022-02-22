class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @studio = Studio.find(params[:studio_id])
    @booking.studio = @studio
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to studio_path(@studio)
    else
      render "studios/show"
    end
  end

  # def accept
  #   @booking = Booking.find(params[:id])
  #   authorize @booking
  # end

  # def decline
  #   @booking = Booking.find(params[:id])
  #   authorize @booking
  #   @booking.update(booking_params)
  #   redirect_to studios_path
  # end

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
