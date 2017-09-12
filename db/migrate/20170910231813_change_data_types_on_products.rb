class ChangeDataTypesOnProducts < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :description, :text
    add_column :products, :stock, :boolean
  end
end
