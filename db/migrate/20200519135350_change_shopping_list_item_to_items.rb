# frozen_string_literal: true

class ChangeShoppingListItemToItems < ActiveRecord::Migration[6.0]

  def change
    rename_table :shopping_list_items, :items
  end

end
