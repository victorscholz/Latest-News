class NewsArticle < ApplicationRecord
    has_many :user_news_articles
    has_many :users, through: :user_news_articles
end
