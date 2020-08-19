class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  
    def reset_page_view_cookie
        session.delete(:view_count)

        redirect_back fallback_location: news_articles_path
    end

    def new 
    end
  
    def create 
      user = User.find_by(name: params[:session][:name])
  
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id 
        redirect_to news_articles_path
      else 
        flash[:error] = "username or password is incorrect"
        redirect_to new_login_path
      end
  
    end 
  
  
    def logout 
      session.delete(:user_id)
  
      redirect_to new_user_path
    end 
end
