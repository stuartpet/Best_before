# frozen_string_literal: true

class AddUserIdtoShoppingList < ActiveRecord::Migration[6.0]

  def change
    add_column :shopping_lists, :user_id, :integer
  end

end
