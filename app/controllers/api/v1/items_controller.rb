class Api::V1::ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items, status: :ok
  end

  def show
    @item = Item.find(params[:id])
    render json: @item, status: :ok
  end

  # post
  def create
    @item = Item.create(item_params)
    if @item.valid?
      render json: @item, status: :created
    else
      render json: @item.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :times_worn, :category_id)
  end
end
