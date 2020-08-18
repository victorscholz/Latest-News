class CreateNewsArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :news_articles do |t|
      t.string :title
      t.date :published
      t.string :category

      t.timestamps
    end
  end
end
