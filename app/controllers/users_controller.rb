class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    def show
        find_user

        if @user == @current_user
            render :show
        else 
            flash[:error] = "can only see your profile"
            redirect_to users_path
        end 
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] =  user.id
            redirect_to news_articles_path
        else
            flash[:my_errors] = user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
        find_user
    end

    def update
        find_user
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        user = User.find(params[:id])
        @user.destroy
        # flash.notice = "User '#{@user.name}' has been deleted"
        redirect_to user_path
    end

private

    def user_params
        params.require(:user).permit(:name, :age, :password)
    end

    def find_user 
        @user = User.find(params[:id])
    end
end
