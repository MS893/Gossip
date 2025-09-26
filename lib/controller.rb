# gérer : créer un gossip, voir la liste complète des gossips ou supprimer un gossip
require 'gossip'
require 'view'

class Controller

  def initialize()
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save_csv
  end

  def index_gossips 
    gossips = Gossip.read_csv
    @view.display_all_gossips(gossips)
  end

  def delete_gossip

  end

end