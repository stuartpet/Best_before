# frozen_string_literal: true

class CreateShoppingListItems < ActiveRecord::Migration[6.0]

  def change
    create_table :shopping_list_items do |t|
      t.string :item
      t.string :frequency_of_purchase
      t.date :last_purchase
      t.references :shopping_lists, foreign_key: true

      t.timestamps
    end
  end

end
