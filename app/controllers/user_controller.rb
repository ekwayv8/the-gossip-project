class UserController < ApplicationController


def create
	@user = User.new(email: params[:email], password: params[:password])
end

  def show
    @user = User.find(params[:user_id].to_i)
  end
end
