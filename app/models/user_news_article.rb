class UserNewsArticle < ApplicationRecord
  belongs_to :user
  belongs_to :news_article
end
