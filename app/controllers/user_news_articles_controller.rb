class UserNewsArticlesController < ApplicationController
    def index
        @user_news_articles = UserNewsArticle.all
    end

    def show
        find_user_news_article
        # redirect_to user_path(@user)
    end

    def new
        @user_news_article = UserNewsArticle.new
       
    end

    def edit
        find_user_news_article
    end

    def create
        @current_user.user_news_articles.create(user_news_params)
        @user_news_article = UserNewsArticle.create(user_news_params)
        if @user_news_article.valid?
            redirect_to user_news_article_path(@user_news_article)
        else
            flash[:my_errors] = @user_news_article.errors.full_messages
            redirect_to new_user_news_article_path
        end
    end

    def update
        find_user_news_article
        @user_news_article.update(user_news_params)
        redirect_to user_news_article_path(@user_news_article)
    end

    def destroy
        user = User.find(params[:id])
        user.news_articles.delete_article
        redirect_to user_path
    end

    private

    def user_news_params
        params.require(:user_news_article).permit(:favorites, :date_added, :news_article_id)
    end

    def find_user_news_article
        @user_news_article = UserNewsArticle.find(params[:id])
    end
end
