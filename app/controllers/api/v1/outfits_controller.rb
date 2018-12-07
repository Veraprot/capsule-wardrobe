class Api::V1::OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
    render json: @outfits, status: :ok
  end

  def show
    @outfit = Outfit.find(params[:id])
    render json: @outfit, status: :ok
  end

  # post
  def create
    @outfit = Outfit.create(outfit_params)
    if @outfit.valid?
      render json: @outfit, status: :created
    else
      render json: @outfit.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @outfit = Outfit.find_by(id: params[:id])
    @outfit.destroy
  end

  private

  def outfit_params
    params.require(:outfit).permit(:items =>
    [:name, :image, :times_worn])
  end
end
