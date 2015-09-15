class AddColumnInfoToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :info, :text
  end
end
