class GossipController < ApplicationController

	#Méthode permettant d'afficher tous les gossips sur la page d'acceuil
	def display_all_gossip
		@gossips = Gossip.all	
	end

	#Méthode permettant de retrouver un gossip grâce à son id
	def show_gossip
		@gossip = Gossip.find(params['id'].to_i)
	end


end
