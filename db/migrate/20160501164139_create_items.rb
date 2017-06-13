class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :productname
      t.string :email
      t.float :baseprice
      t.integer :cdays
      t.integer :chours
      t.integer :cminutes
      t.string :category

      t.timestamps null: false
    end
  end
end
