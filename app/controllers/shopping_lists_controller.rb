# frozen_string_literal: true

class ShoppingListsController < ApplicationController

  def index
    @shopping_lists = ShoppingLists.all
  end

  def show
    @shopping_lists = ShoppingLists.find(params[:id])
  end

  def new; end

  def edit
    @shopping_lists = ShoppingLists.find(params[:id])
  end

  def create
    @shopping_lists = ShoppingLists.new(shopping_list_params)

    @shopping_lists.save
    redirect_to @shopping_lists
  end

  def update
    @shopping_lists = ShoppingLists.find(params[:id])

    if @shopping_lists.update(shopping_list_params)
      redirect_to @shopping_lists
    else
      render edit
    end
  end

  private

  def shopping_list_params
    params.require(:shopping_lists).permit(:name)
  end

end
