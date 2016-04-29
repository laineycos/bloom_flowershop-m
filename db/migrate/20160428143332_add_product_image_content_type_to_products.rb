class AddProductImageContentTypeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :productImage_content_type, :string
  end
end
