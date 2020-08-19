class UsersController < ApplicationController
    def index
        @users = User.all
        # delete later
    end

    def show
        find_user

        # if @user == @current_user
        #     render :show
        # else 
        #     flash[:error] = "can only see your profile"
        #     redirect_to users_path
        # end 
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] =  @user.id
            redirect_to user_path(@user)
        else
            flash[:my_errors] = @user.errors.full_messages
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
        find_user
        @user.destroy
        # flash.notice = "User '#{@user.name}' has been deleted"
        redirect_to user_path
    end

private

    def user_params
        params.require(:user).permit(:name, :age)
    end

    def find_user 
        @user = User.find(params[:id])
    end
end
