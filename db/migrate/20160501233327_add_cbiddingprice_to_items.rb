class AddCbiddingpriceToItems < ActiveRecord::Migration
  def change
    add_column :items, :cbiddingprice, :float
  end
end
