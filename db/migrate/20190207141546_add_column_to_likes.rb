class AddColumnToLikes < ActiveRecord::Migration[5.2]
  def change
  
    change_table :likes do |t|
    	t.references :user
    	t.references :gossip
  end
end
end
