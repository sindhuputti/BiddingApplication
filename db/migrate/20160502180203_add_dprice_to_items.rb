class AddDpriceToItems < ActiveRecord::Migration
  def change
    add_column :items, :dprice, :float
  end
end
