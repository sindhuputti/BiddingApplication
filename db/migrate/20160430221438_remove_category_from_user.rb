class RemoveCategoryFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :category, :string
  end
end
