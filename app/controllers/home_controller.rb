class HomeController < ApplicationController

		#Méthode permettant d'afficher tous les gossips sur la page d'acceuil
	def index
		@gossips = Gossip.all
	end
end
