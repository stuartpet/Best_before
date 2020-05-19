# frozen_string_literal: true

class DropListItemsTable < ActiveRecord::Migration[6.0]

  def up
    drop_table :list_items
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
