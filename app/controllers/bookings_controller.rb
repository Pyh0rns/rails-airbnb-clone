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

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "Accepted"
    @booking.save
    redirect_to my_profile_path
  end

  def decline
    @booking = Booking.find(params[:id])
    # @booking = Booking.find(params[:studio_id][:id])
    authorize @booking
    @booking.status = "Declined"
    @booking.save
    redirect_to my_profile_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to studio_path(@booking.studio)
    # redirect_to studios_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
