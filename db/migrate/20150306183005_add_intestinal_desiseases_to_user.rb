class AddIntestinalDesiseasesToUser < ActiveRecord::Migration
  def change
  	add_column :users, :intestinal_diseases, :boolean
  end
end
