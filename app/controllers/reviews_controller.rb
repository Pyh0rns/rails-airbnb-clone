class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    authorize @review
    @studio = Studio.find(params[:studio_id])
    @review.studio = @studio
    @review.user_id = current_user.id
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
