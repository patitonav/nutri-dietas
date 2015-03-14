class AddIntestinalDesiseasesToUser < ActiveRecord::Migration
  def change
  	add_column :users, :intestinal_desiseases, :boolean
  end
end
