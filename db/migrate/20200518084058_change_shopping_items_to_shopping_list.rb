# frozen_string_literal: true

class ChangeShoppingItemsToShoppingList < ActiveRecord::Migration[6.0]

  def change
    rename_table :shopping_items, :shopping_list
  end

end
