class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.float :latitude
      t.float :longitude
      t.boolean :admin
      t.string :category
      

      t.timestamps null: false
    end
  end
end
