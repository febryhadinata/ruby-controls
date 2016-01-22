class UsersController < ApplicationController
  # get 'signup' => 'users#new', as: 'register'
  def new
     @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid? && @user.save
      session[:user_id] = @user.id
      redirect_to root_url
    else
      redirect_to register_url
    end
  end

  private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
