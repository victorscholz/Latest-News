class User < ApplicationRecord
    has_many :user_news_articles
    has_many :news_articles, through: :user_news_articles

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :age, presence: true
    validates :age, numericality: {greater_than: 13}

    has_secure_password
end
