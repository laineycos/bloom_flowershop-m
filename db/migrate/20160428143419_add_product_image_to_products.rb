class AddProductImageToProducts < ActiveRecord::Migration
  def change
    add_column :products, :productImage, :string
  end


end