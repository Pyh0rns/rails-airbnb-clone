class StudiosController < ApplicationController
  def index
    @studios = Studio.all
  end

  def show
    @studio = Studio.find(params[:id])
  end

  def new
    @studio = Studio.new
  end

  def create
    @user_id = 1 # to be changed with real user id
    # @user_id = User.find(params[:TO DO][:TO DO])
    @studio = Studio.new(studio_params)
    @studio.user_id = @user_id
    if @studio.save
      redirect_to studio_path(@studio)
    else
      render :new
    end
  end

  def edit
    @studio = Studio.find(params[:id])
  end

  def update
    @studio = Studio.find(params[:id])
    @studio.update(studio_params)
    redirect_to studios_path
  end

  def destroy
    @studio = Studio.find(params[:id])
    @studio.destroy
    redirect_to studios_path
  end

  private

  def studio_params
    params.require(:studio).permit(:address, :title, :description, :price, :available)
  end
end
