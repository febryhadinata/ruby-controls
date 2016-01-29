class SessionsController < ApplicationController
  # get 'login' => 'sessions#new'
  def new
  end

  # post 'login' => 'sessions#create'
  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_url
    else
      redirect_to login_url
    end
  end

  # delete 'logout' => 'sessions#destroy'
  def destroy
    session[:user_id] = nil
    redirect_to login_url
  end
end
