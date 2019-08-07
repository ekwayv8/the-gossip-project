class UserController < ApplicationController

  def show
    @user = User.find(params[:user_id].to_i)
  end
end
