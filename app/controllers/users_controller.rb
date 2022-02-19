class UsersController < ApplicationController
  
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
 end

  def create
    @user = User.create(params.require(:user).permit(:username,        
    :password, :first_name, :surname, :email.downcase, :password_confirmation, :authenticity_token, :id))
    
    @user.first_name = @user.first_name.capitalize
    @user.surname = @user.surname.capitalize

    if @user.save
      session[:user_id] = @user.id
      redirect_to '/home/index'
    else
      render '/users/new'
    end
 end
end
