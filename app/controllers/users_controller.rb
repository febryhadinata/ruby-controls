class UsersController < ApplicationController
  
  def new
     @user = User.new
  end

  def create
     @user = User.new(user_params) 
  end

  private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  # def testjsonAPI
  #    @user = User.all
  #    render json: @user
  # end

end
