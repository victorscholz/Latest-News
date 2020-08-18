class UserNewsArticlesController < ApplicationController
    def index
        @user_news_articles = UserNewsArticle.all
    end

    def show
        @user_news_article = UserNewsArticle.find(params[:id])
    end

    def new
        @user_news_article = UserNewsArticle.new
    end

    def edit
        @user_news_article = UserNewsArticle.find(params[:id])
    end

    def create
        @user_news_article = UserNewsArticle.create(user_news_params)
        if @user_news_article.valid?
            redirect_to user_news_article_path(@user_news_article)
        else
            flash[:my_errors] = @user_news_article.errors.full_messages
            redirect_to new_user_news_article_path
        end
    end

    def update
        @user_news_article = UserNewsArticle.find(params[:id])
        @user_news_article.update(user_news_params)
        redirect_to user_news_article_path(@user_news_article)
    end

    private

    def user_news_params
        params.require(:user_news_article).permit(:favorites, :date_added, :user_id, :news_article_id)
    end
end
