class DashboardsController < ApplicationController

# before_action :find_user, only: [:show, :edit, :update, :destroy]
# before_action :authenticate_user!, except: [:index, :show]

  def my_profile
    @user = current_user
    authorize @user
  end

  def profile
    @user = User.find(params[:id])
    authorize @user
  end

  # def edit
  #   @user = user.find(params[:id])
  # end

  # def update
  #   @user = user.find(params[:id])
  #   @user.update(user_params)
  # end

  # private

  # def find_user
  #   @user = user.find(params[:id])
  # end

  # def user_params
  #   params.require(:user).permit(:id,:name, :user_id)
  # end
end
