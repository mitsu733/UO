class RemoveUrlFromArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :url, :string
  end
end
