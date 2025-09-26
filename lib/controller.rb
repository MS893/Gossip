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
    gossips = Gossip.all
    @view.index_gossips(gossips)
  end

  def delete_gossip
    gossips = Gossip.all
    line = @view.delete_gossips(gossips)
    line -= 1
    # suppression du gossip de la liste des gossips
    gossips.delete_at(line)
    # affichage de la liste des gossips après suppression
    confirm = @view.confirm_delete_gossips(gossips)
    if confirm
      gossip.save(gossips)
    end
  end

end