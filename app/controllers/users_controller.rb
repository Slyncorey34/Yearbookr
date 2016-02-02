class UsersController < ApplicationController
  
  def index
  end


  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end


  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render edit_user_path(@user)
    end
  end 

  def destroy
    @user = User.find(params[:id])
  @user.delete
  redirect_to users_path
 end

  private
    def user_params
      params.require(:user).permit(:username, :password, :avatar)
    end
end
