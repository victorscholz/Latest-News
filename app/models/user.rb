class User < ApplicationRecord
    has_many :user_news_articles
    has_many :news_articles, through: :user_news_articles
end
