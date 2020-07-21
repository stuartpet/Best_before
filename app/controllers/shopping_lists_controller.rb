# frozen_string_literal: true

class ShoppingListsController < ApplicationController

  before_action :authenticate_user!

  def index
    @shopping_lists = ShoppingList.all
  end

  def show
    @shopping_lists = ShoppingList.find(permitted_params[:id])
    @shopping_lists = ShoppingList.first
  end

  def new
    @user = current_user
    @shopping_lists = @user.shopping_lists.new
  end

  def create
    @user = current_user
    @shopping_lists = @user.shopping_lists.new(permitted_params[:shopping_lists])

    if @shopping_lists.save
      redirect_to shopping_lists_path(@shopping_lists)
    else
      render 'new'
    end
  end

  def destroy
    @shopping_lists = ShoppingList.find(permitted_params[:id])
    @shopping_lists.destroy

    redirect_to shoppingLists_path
  end

  private

  def permitted_params
    params.permit!
  end

end
