# frozen_string_literal: true

class RemoveColumnsFromShoppingListTable < ActiveRecord::Migration[6.0]

  change_table :shopping_list, bulk: true do |t|
    t.remove :item
    t.remove :frequency_of_purchase
    t.remove :last_purchased
  end

end
