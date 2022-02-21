class DashboardsController < ApplicationController

# before_action :find_user, only: [:show, :edit, :update, :destroy]
# before_action :authenticate_user!, except: [:index, :show]

  def profile
    @user = User.first
  end

  # def show
  #   @user = user.find(user_params)
  # end

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
