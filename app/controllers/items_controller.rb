# frozen_string_literal: true

class ItemsController < ApplicationController

  before_action :find_shopping_list
  before_action :set_item, only: %i[show edit update destroy]

  def index
    @items = @shopping_lists.items
  end

  def show; end

  def new
    @items = @shopping_lists.items.build
  end

  def edit; end

  def create
    @items = @shopping_lists.items.build(permitted_params[:item])
    if @items.save
      redirect_to shopping_list_items_path(@shopping_lists)
    else
      render 'new'
    end
  end

  def update
    if @items.update(item_params)
      redirect_to shopping_list_items_path(@shopping_lists)
    else
      render 'edit'
    end
  end

  def destroy
    @items.destroy
    redirect_to shopping_list_items_path(@shopping_lists)
  end

  private

  def set_item
    @items = Item.find(permitted_params[:id])
  end

  def permitted_params
    params.permit!
  end

  def find_shopping_list
    @shopping_lists = ShoppingLists.find(permitted_params[:shopping_list_id])
  end

  def item_params
    params.require(:item).permit(:item, :frequency_of_purchase, :last_purchase)
  end

end
