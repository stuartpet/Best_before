# frozen_string_literal: true

class ChangeShoppingListsInUsers < ActiveRecord::Migration[6.0]

  def change
    rename_column :users, :shopping_lists_id, :shopping_list_id
  end

end
