# frozen_string_literal: true

class ShoppingListsController < ApplicationController

  def index
    @shopping_lists = ShoppingLists.all
  end

  def show
    @shopping_lists = ShoppingLists.find(permitted_params[:id])
    @shopping_lists = ShoppingLists.first
  end

  def new
    @shopping_lists = ShoppingLists.new
  end

  def create
    @shopping_lists = ShoppingLists.new(permitted_params[:shopping_lists])

    if @shopping_lists.save
      redirect_to @shopping_lists
    else
      render 'new'
    end
  end

  def destroy
    @shopping_lists = ShoppingLists.find(permitted_params[:id])
    @shopping_lists.destroy

    redirect_to shopping_lists_path
  end

  private

  def permitted_params
    params.permit!
  end

end
