class UsersController < ApplicationController
  def new
    @user= User.new
  end

  # /users
  def create
    @user = User.new(user_params)
    #@user = User.new(name: params[:name], email: params[:email], password: params[:password])
    if @user.save
      redirect_to new_user_path  # goes /users/new
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
