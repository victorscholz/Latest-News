class AddDescriptionToNewsArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :news_articles, :description, :text
  end
end
