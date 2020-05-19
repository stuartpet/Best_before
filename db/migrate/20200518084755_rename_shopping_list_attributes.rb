# frozen_string_literal: true

class RenameShoppingListAttributes < ActiveRecord::Migration[6.0]

  def change
    rename_column :shopping_list, :title, :name
  end

end
