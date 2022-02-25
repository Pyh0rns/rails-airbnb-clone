class DashboardsController < ApplicationController
# before_action :find_user, only: [:show, :edit, :update, :destroy]
# before_action :authenticate_user!, except: [:index, :show]

  def profile
    @user = User.find(params[:id])
    authorize @user
  end
end
