class AlterColumnProductsPrice < ActiveRecord::Migration
  def change
    change_table :products do |t|
    t.change :price, :decimal
  end
  end
end
