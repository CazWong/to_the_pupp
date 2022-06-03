class PuppiesController < ApplicationController
  before_action :set_puppy, only: %w[show edit update destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @puppies = Puppy.all
    @puppies = policy_scope(Puppy)

    if params[:query].present?
      @puppies = Puppy.geocoded.search_by_puppy_fields(params[:query])
    else
      @puppies = Puppy.geocoded
    end
    @markers = @puppies.map do |puppy| {
      lat: puppy.latitude,
      lng: puppy.longitude,
      info_window: render_to_string(partial: "info_window", locals: { puppy: puppy }),
      image_url: helpers.asset_url("paw.png")
    }
    end
  end

  def show
    authorize @puppy
  end

  def new
    @puppy = Puppy.new
    authorize @puppy
  end

  def create
    @puppy = Puppy.new(puppy_params)
    @puppy.user_id = current_user.id
    authorize @puppy

    if @puppy.save
      redirect_to @puppy
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @puppy.update(puppy_params)
      redirect_to @puppy
    else
      render :edit
    end
  end

  def destroy
    @puppy.destroy
    redirect_to puppies_path
  end

  private

  def set_puppy
    @puppy = Puppy.find(params[:id])
    authorize @puppy
  end

  def puppy_params
    params.require(:puppy).permit(:name, :address, :breed, :description, photos: [])
  end
end
