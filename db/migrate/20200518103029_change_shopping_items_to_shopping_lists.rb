# frozen_string_literal: true

class ChangeShoppingItemsToShoppingLists < ActiveRecord::Migration[6.0]

  def change
    rename_table :shopping_list, :shopping_lists
  end

end
