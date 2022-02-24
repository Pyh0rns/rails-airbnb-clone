class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @studios = policy_scope(Studio).order(created_at: :desc)
    # -------------------------- GEOCODER --------------------------------
    @markers = @studios.geocoded.map do |studio|
      {
        lat: studio.latitude,
        lng: studio.longitude,
        info_window: render_to_string(partial: "info_window", locals: { studio: studio }),
        image_url: helpers.asset_url("logo-map.png")
      }
    end
    # --------------------------- SEARCH ---------------------------------
    if params[:query].present?
      sql_query = "title ILIKE :query OR address ILIKE :query"
      @studios = Studio.where(sql_query, query: "%#{params[:query]}%")
    else
      @studios = Studio.all
    end
  end

  def show
    @studio = Studio.find(params[:id])
    @booking = Booking.new
    authorize @studio
  end

  def new
    @studio = Studio.new
    authorize @studio
  end

  def create
    @studio = Studio.new(studio_params)
    authorize @studio
    @studio.user_id = current_user.id
    if @studio.save
      redirect_to studio_path(@studio)
    else
      render :new
    end
  end

  def edit
    @studio = Studio.find(params[:id])
    authorize @studio
  end

  def update
    @studio = Studio.find(params[:id])
    authorize @studio
    @studio.update(studio_params)
    redirect_to studios_path
  end

  def destroy
    @studio = Studio.find(params[:id])
    authorize @studio
    @studio.destroy
    redirect_to studios_path
  end

  private

  def studio_params
    params.require(:studio).permit(:address, :title, :description, :price, :available, photos: [])
  end
end
