class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    @user = User.find_by(email: params[:email].downcase!)
        if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       redirect_to '/home/index'
        elsif !@user
          redirect_to '/login',  :notice => "No user signed up with this email"
        elsif !@user.authenticate(params[:password])
          redirect_to '/login',  :notice => "Password incorrect, please try again"
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
