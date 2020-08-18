class NewsArticlesController < ApplicationController
    def index
        @news_articles = NewsArticle.all
    end

    def show
        @news_article = NewsArticle.find(params[:id])
    end


    def update
        @news_article = UserNewsArticle.find(params[:id])
        @news_article.update(news_params)
        redirect_to news_article_path(@news_article)
    end


    private

    def news_params
        params.require[:news_articles].permit[:title, :published, :description, :category]
    end
end
