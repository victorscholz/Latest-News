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
karan_api_key = ENV["karan_api"]

# binding.pry

User.create(name: 'Victor', age: 27)
User.create(name: 'Karan', age: 99)
User.create(name: 'Miso', age: 15)
User.create(name: 'Kiwi', age: 16)

count = 0
while NewsArticle.all.length < 30 do
    news_info["news"].each do |article|
        NewsArticle.create(title: article["title"],
        published: article["published"],
        description: article["description"],
        category: article["category"][0],
        img_url: article["image"],
        url: article["url"]
        )
    end
    news_info = JSON.parse(RestClient.get("https://api.currentsapi.services/v1/latest-news?language=en&country=US&page_number=#{count}" + "#{karan_api_key}"))
    count += 1
end

# binding.pry


# news1 = NewsArticle.create(title: "first article", published: "2020-08-09", category: "Current Events")
# news2 = NewsArticle.create(title: "second article", published: "2020-09-10", category: "Food")
# news3 = NewsArticle.create(title: "third article", published: "2020-10-11", category: "Science")

# 10.times do
#     UserNewsArticle.create(favorites: NewsArticle.all.sample.title, date_added: NewsArticle.all.sample.published, user_id: User.all.sample.id, news_article_id: NewsArticle.all.sample.id)
# end
