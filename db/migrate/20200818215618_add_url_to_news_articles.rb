class AddUrlToNewsArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :news_articles, :url, :string
  end
end
