class RemoveCminutesFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :cminutes, :integer
  end
end
