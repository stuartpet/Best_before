# frozen_string_literal: true

class ShoppingLists < ApplicationRecord

  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items

  validates :name, presence: true

  self.table_name = 'shopping_lists'

end
