class AddColumnNameAndPermissionToUser < ActiveRecord::Migration
  def change
  	add_column :users,:name, :string
  	add_column :users,:permission_level, :integer, default: 1
  end
end
