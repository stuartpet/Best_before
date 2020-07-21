# frozen_string_literal: true

class AddShoppingListIdToUser < ActiveRecord::Migration[6.0]

  def change
    add_column :users, :shopping_lists_id, :integer
  end

end
