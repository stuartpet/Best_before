# frozen_string_literal: true

class ShoppingLists < ApplicationRecord

  validates :name, presence: true

  self.table_name = 'shopping_lists'

end
