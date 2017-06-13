class AddLbidderemailToItems < ActiveRecord::Migration
  def change
    add_column :items, :lbidderemail, :string
  end
end
