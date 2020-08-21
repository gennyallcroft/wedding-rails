class PasswordResetsController < ApplicationController

  skip_before_action :authorized
  

  def new

  end

  def create
    p "coming into create password_resets method_________________________________________________"
    p "email params___"
    p params[:email]
    @user = User.find_by_email(params[:email])
    p "user::::"
    p @user
    @user.send_password_reset if @user
    redirect_to '/login'
  end

  def edit
    @user = User.find_by_password_reset_token!(params[:id])
  end


  def update
    "coming into update method"
    @user = User.find_by_password_reset_token!(params[:id])
    p "this is the userrr________ (in update method)"
    p @user
    p "user password reset sent at"
    p @user.password_reset_sent_at
    p "here are the params"
    p params[:user]
    if @user.password_reset_sent_at < 2.hours.ago
      p "passwords expired duddeeee"
      redirect_to new_password_reset_path, :alert => "Password token has expired"
    elsif 
      p "these are the params[:user][password]"
      p params[:user][:password]
      new_password = params[:user][:password]
      p "new_password:"
      p new_password

      encrypted_password = BCrypt::Password.create(new_password)
      @user.update(password_digest: encrypted_password)

      p "password_digest:"
      p @user.password_digest

      p "this is the updated userrrrr"
      p @user
      p "this is the users newww password"
      p @user.password_digest
      redirect_to '/login', :notice => "Password has been reset"
    else
      render  :edit
  end
end



end

