class GossipController < ApplicationController
  def index
  	#permet d'afficher une alerte à l'utilisateur
  	puts flash[:alert]
  	@gossips = Gossip.all
  end

  def show
  	@gossip = Gossip.find(params['id'].to_i)
  end

  def create
	  @gossip = Gossip.new(user: User.last, title: params[:title], content: params[:content])
	    if @gossip.save
	      redirect_to gossip_index_path, alert: 'Votre gossip a bien été sauvegardé'
	    else
	      render :new
	    end
  end

  def new
  	
  end

end
