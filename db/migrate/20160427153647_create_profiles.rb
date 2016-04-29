class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :email,  null: false, default: ""

      t.timestamps null: false
    end
  end
end
