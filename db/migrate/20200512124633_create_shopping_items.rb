# frozen_string_literal: true

class CreateShoppingItems < ActiveRecord::Migration[6.0]

  def change
    create_table :shopping_items do |t|
      t.string :title
      t.text :item
      t.text :frequency_of_purchase
      t.date :last_purchased

      t.timestamps
    end
  end

end
