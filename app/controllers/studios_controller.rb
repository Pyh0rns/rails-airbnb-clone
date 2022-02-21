class StudiosController < ApplicationController
  def index
    @studios = Studio.all
  end

  def show
  end
end
