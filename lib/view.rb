# affichage des résultats dans le terminal

class View

  def initialize
    @gossips = []
  end

  def create_gossip
    # Gossip à saisir
    clear_screen()
    print "Nom de l'auteur   : "
    gossip_author = gets.chomp.to_s
    print "Contenu du gossip : "
    gossip_content = gets.chomp.to_s
    return params = { author: gossip_author, content: gossip_content }.
  end

  def display_all_gossips(gossips)
    puts "Voici la liste de tous les potins :"
    gossips.each_with_index do |gossip, index|
      puts "#{index + 1}. #{gossip.author} a dit : #{gossip.content}"
    end
    puts "-" * 20
  end

  # efface l'écran
  def clear_screen
    system("clear")
  end

end