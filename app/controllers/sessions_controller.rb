class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    p "coming into create session in session controller......"
    p "here is the user"
    p @user
    p "here is the params for password"
    p params[:password]
    if @user && @user.authenticate(params[:password])
      p "authentication passsssed______________"
       session[:user_id] = @user.id
       redirect_to '/home/index'
    else
      p "authentication failed wahhh"
       redirect_to '/login'
    end
  end

  def login
  end

  def welcome
  end

  def page_requires_login
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to '/login'
  end

end
