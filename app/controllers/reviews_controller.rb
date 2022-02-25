class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    authorize @review
    @studio = Studio.find(params[:studio_id])
    @review.studio = @studio
    @review.user_id = current_user.id
    @booking = Booking.new
    @reviews = Review.all
    if @review.save
      redirect_to studio_path(@studio)
    else
      render "studios/show"
    end

  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end


# on pourrait mettre un flash

#   if @review.save
#     ;flash[:notice] = 'Review was successfully created.'
#     redirect_to studio_path(@studio)
#   else
#     flash[:notice] = "Error creating review: #{@review.errors}"
#     redirect_to studio_path(@studio)
#   end
# end
