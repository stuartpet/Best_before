# frozen_string_literal: true

class ShoppingItemsController < ApplicationController

  def index
    @shopping_item = ShoppingItem.all
  end

  def show
    @shopping_item = ShoppingItem.find(params[:id])
  end

  def new; end

  def create
    @shopping_item = ShoppingItem.new(shopping_item_params)

    @shopping_item.save
    redirect_to @shopping_item
  end

  private

  def shopping_item_params
    params.require(:shopping_item).permit(:title, :item, :frequency_of_purchase, :last_purchased)
  end

end
