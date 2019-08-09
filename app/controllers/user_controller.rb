class UserController < ApplicationController

include UserHelper

#before_action :authenticate_user, only: [:show]

 def show
    @user = User.find(params[:id])
  end



def new
    @cities = City.all
end

  def create
    @user = User.new(password: params[:password], password_confirmation: params[:password_confirm], city: City.find(params[:city]), first_name: params[:first_name], last_name: params[:last_name], age: set_age(params[:birthdate]), email: params[:email], description: params[:description])
    if @user.save 
      flash[:alert] = 'Vous pouvez maintenant vous connecter !'
      redirect_to new_session_path
    else
      @cities = City.all
      render :new
    end
  end


 

end
