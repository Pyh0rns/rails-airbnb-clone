class StudiosController < ApplicationController
  def index
    @studios = Studio.all
  end

  def show
    @studios = Studio.find(studio_params)
  end

  private

  def studio_params
    param.require(:studio).permit(:address, :title, :description, :price, :available)
  end
end
