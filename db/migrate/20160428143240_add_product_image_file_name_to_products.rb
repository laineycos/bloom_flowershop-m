class AddProductImageFileNameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :productImage_file_name, :string
  end
end
