class User < ApplicationRecord
  has_many :user_news_articles
  has_many :news_articles, through: :user_news_articles

<<<<<<< HEAD
  validates :name, presence: true
  validates :age, presence: true
  validates :age, numericality: { greater_than: 13 }
=======
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :age, presence: true
    validates :age, numericality: {greater_than: 13}
>>>>>>> 3be2dacdf7e299ee0d6f13b33598071f3cfde69b

  has_secure_password
end
