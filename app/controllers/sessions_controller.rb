class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.where(username: params[:username]).first
  	if @user.password == params[:password])
  		session[:user_id] = @user.user_id
  		redirect_to user_path(@user)
  	else
  		redirect_to login_path	
    end
  end


  def destroy
  	session[:user_id] = nil
  end
end
