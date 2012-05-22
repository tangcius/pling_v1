class StaticPagesController < ApplicationController
  def profile
    @user = User.find_by_remember_token(params[:remember_token])
  end

  def admin
  end

  def register
  end

  def press
  end

  def about
  end
  
  def contact
  end
end
