class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @user.user_type = params[:user_type]
  end
  
  def create
      @user = User.new(params[:user])
      if @user.save
        sign_in @user
        flash[:success] = "Thanks for signing up"
        redirect_to @user
      else
        render 'new'
      end
    end
end
