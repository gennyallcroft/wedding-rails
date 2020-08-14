class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      p "here's the params"
        p params
        p "remember me params:________________"
        p params[:remember_me]
      if params[:remember_me]
        p "settng perm cookie"
        cookies.permanent[:auth_token] = @user.auth_token
      else
        p "temp cookie"
      cookies[:auth_token] = @user.auth_token
      end
      p "cookiessssssssss permanent"
      p cookies.permanent[:auth_token]
      p "cookies normal"
      p cookies[:auth_token]
      #  session[:user_id] = @user.id
       redirect_to '/home/index'
    else
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
    # session.delete(:user_id)
    cookies.delete(:auth_token)
    @current_user = nil
    redirect_to '/login'
  end

end
