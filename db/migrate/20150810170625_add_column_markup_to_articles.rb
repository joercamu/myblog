class AddColumnMarkupToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :markup, :text, default: ""
  end
end
