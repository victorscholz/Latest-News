class NewsArticle < ApplicationRecord
    has_many :user_news_articles
    has_many :users, through: :user_news_articles

    # def self.get_data_from_api
    #     url = URI("https://currents-news.p.rapidapi.com/search?end_date=2020-08-16")
    
    #     http = Net::HTTP.new(url.host, url.port)
    #     http.use_ssl = true
    #     http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    #     request = Net::HTTP::Get.new(url)
    #     request["authorization"] = '4E0YsHnukpjC9b1JUPfeIX5rQAXhoOxpZc-fBASVa2vMLo41'
    #     request["x-rapidapi-host"] = 'currents-news.p.rapidapi.com'
    #     request["x-rapidapi-key"] = 'ebc6cc4536msh54ba90cb8eb1d27p16a6d7jsnfb16079a119d'

    #     response = http.request(request)
    #     puts response.read_body
    # end
end
