class Api::V1::CategoriesController < ApplicationController
  def index 
    @categories = Category.all
    render json: @categories, status: :ok
  end 

  def show 
    @category = Category.find(params[:id])
    render json: @category, status: :ok
  end 

  # post 
  def create
    @category = Category.create(category_params)
    if @category.valid?
      render json: @category, status: :created
    else
      render json: @category.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
