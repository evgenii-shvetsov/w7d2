class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save!
            login(@user)
            redirect_to user_url(@user.id)
        else
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        render :show
    end

    def user_params
        params.require(:user).permit(:email, :password)
    end
end