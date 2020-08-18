class AddImageToNewsArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :news_articles, :img_url, :string
  end
end
