class CityController < ApplicationController
	
  	def index
  		@cities = City.all
  	end


  def show
  	@city = City.find(params[:id].to_i)
  end
end
