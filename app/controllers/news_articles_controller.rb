class NewsArticlesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @news_articles = NewsArticle.all
    end

    def show
        @news_article = NewsArticle.find(params[:id])

        if session[:view_count]
            session[:view_count] = session[:view_count] + 1
        else 
            session[:view_count] = 1
        end 
    end


    def update
        @news_article = UserNewsArticle.find(params[:id])
        @news_article.update(news_params)
        redirect_to news_article_path(@news_article)
    end

    def destroy 
        @news_article = NewsArticle.find(params[:id])
        @news_article.destroy
        
        redirect_to news_articles_path
    end 


    private

    def news_params
        params.require[:news_articles].permit[:title, :published, :description, :category, :img_url, :url]
    end
end
