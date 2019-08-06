class GossipController < ApplicationController

	def display_gossip

	@gossip = Gossip.find(params['id'].to_i)
		
	end

end
