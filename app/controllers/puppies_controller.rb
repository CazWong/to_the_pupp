class PuppiesController < ApplicationController
  before_action :set_puppy, only: %w[show edit update destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @puppies = Puppy.all
    @puppies = policy_scope(Puppy)

    if params[:query].present?
      # sql_query = " \
      #   puppies.name ILIKE :query \
      #   OR puppies.address ILIKE :query \
      #   OR puppies.breed ILIKE :query \
      #   OR puppies.description ILIKE :query \
      # "
      # @puppies = Puppy.where(sql_query, query: "%#{params[:query]}%")
      @puppies = Puppy.search_by_puppy_fields(params[:query])
    else
      @puppies = Puppy.all
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
