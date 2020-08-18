require_relative '../config/environment'
require 'rest-client'
require 'json'
require 'pry'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
NewsArticle.delete_all
UserNewsArticle.delete_all

a = ENV["news"]
news_api_data = RestClient.get(a)
news_info = JSON.parse(news_api_data)

# binding.pry

u1 = User.create(name: 'Victor', age: 27)
u2 = User.create(name: 'Karan', age: 99)
u3 = User.create(name: 'Miso', age: 3)
u4 = User.create(name: 'Kiwi', age: 2)

news_info["news"].each do |article|
    NewsArticle.create(title: article["title"],
    published: article["published"],
    category: article["category"])
end

binding.pry


# news1 = NewsArticle.create(title: "first article", published: "2020-08-09", category: "Current Events")
# news2 = NewsArticle.create(title: "second article", published: "2020-09-10", category: "Food")
# news3 = NewsArticle.create(title: "third article", published: "2020-10-11", category: "Science")

# 10.times do
#     UserNewsArticle.create(favorites: NewsArticle.all.sample.title, date_added: NewsArticle.all.sample.published, user_id: User.all.sample.id, news_article_id: NewsArticle.all.sample.id)
# end
