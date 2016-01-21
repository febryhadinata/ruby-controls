class UsersController < ApplicationController

  # get 'signup' => 'users#new', as: 'register'
  def new
     @user = User.new
  end

  def create
    @user = User.new(user_params)
    debugger
    if @user.valid? && @user.save
      session[:user_id] = @user.id
      redirect_to root_url
    else
      redirect_to register_url
      # redirect_to register_url, :flash => { :error => "Insufficient rights!" }
      # redirect_to(register_url, {:flash => { :error => "Insufficient rights!" }})
      #respond_to do |format|
      #  format.html { redirect_to register_url, :alert => "An Error Occurred! #{@user.errors[:base].to_s}" }
      #  format.json { head : }
      #end
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
