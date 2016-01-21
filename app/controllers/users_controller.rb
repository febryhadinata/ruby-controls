class UsersController < ApplicationController
  
  def new
     @user = User.new
  end

  def create
    @user = User.new(user_params) 
    if (@user.valid? && @user.save)
      session[:user_id] = @user.id
      redirect_to '/dashboard'
    else
      redirect_to '/signup'
    end
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
