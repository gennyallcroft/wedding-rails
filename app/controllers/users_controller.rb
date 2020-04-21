class UsersController < ApplicationController
  
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
 end

  def create
    @user = User.create(params.require(:user).permit(:username,        
    :password, :first_name, :surname, :email))
    p "user created:"
    p @user
    session[:user_id] = @user.id
    redirect_to '/home/index'
 end
end
