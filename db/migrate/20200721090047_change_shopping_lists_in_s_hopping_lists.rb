# frozen_string_literal: true

class ChangeShoppingListsInSHoppingLists < ActiveRecord::Migration[6.0]

  def change
    rename_column :items, :shopping_lists_id, :shopping_list_id
  end

end
