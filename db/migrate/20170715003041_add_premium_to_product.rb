class AddPremiumToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :premium, :boolean
  end
end
