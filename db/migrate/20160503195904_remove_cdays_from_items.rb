class RemoveCdaysFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :cdays, :integer
  end
end
