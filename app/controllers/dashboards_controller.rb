class DashboardsController < ApplicationController

# before_action :find_user, only: [:show, :edit, :update, :destroy]
# before_action :authenticate_user!, except: [:index, :show]

  # def my_profile
  #   @user = current_user
  #   authorize @user
  # end

  def profile
    @user = User.find(params[:id])
    authorize @user
  end
end
