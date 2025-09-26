# affichage des résultats dans le terminal

class View

  def initialize
    @gossips = []
  end

  def create_gossip
    gossip = Gossip.new("Jean-Michel Concierge", "Féfé est de Bordeaux")
    gossip.save_csv
  end

  def display_all_gossips(gossips)
    puts "Voici la liste de tous les potins :"
    gossips.each_with_index do |gossip, index|
      puts "#{index + 1}. #{gossip.author} a dit : #{gossip.content}"
    end
    puts "-" * 20
  end

end