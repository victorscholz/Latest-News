class CreateUserNewsArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_news_articles do |t|
      t.string :favorites
      t.date :date_added
      t.integer :user_id
      t.integer :news_article_id

      t.timestamps
    end
  end
end
