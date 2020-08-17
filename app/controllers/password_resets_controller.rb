class PasswordResetsController < ApplicationController

  skip_before_action :authorized

  def new
  end

  def create
    p "coming into create password_resets method_________________________________________________"
    @user = User.find_by_email(params[:email])
    user.send_reset_password if user
    redirect_to root_url
  end
end
