# frozen_string_literal: true

class CreateListItems < ActiveRecord::Migration[6.0]

  def change
    create_table :list_items do |t|
      t.text :item_name
      t.text :frequency_of_purchase
      t.date :last_purchased

      t.timestamps
    end
  end

end
