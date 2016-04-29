class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user_id, index: true, foreign_key: true
      t.references :product_id, index: true, foreign_key: true
      t.integer :payment_id

      t.timestamps null: false
    end
  end
end
