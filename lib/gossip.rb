# c'est le MODEL, il pioche dans la db et sort des instances de Gossips
require 'csv'

class Gossip
attr_reader :content, :author

  def initialize(author, content)
    @author = author    # string
    @content = content  # string
  end

  # écrit dans le csv
  def save_csv
    if content.nil? || content.empty? || author.nil? || author.empty?
      puts "Aucune donnée à sauvegarder dans le fichier CSV."
      return
    end
    CSV.open('db/gossip.csv', 'a') do |csv|
      csv << [@author, @content]
    end
    puts "Les données ont été sauvegardées avec succès dans db/gossip.csv"
  end

  # sauvegardev
  def self.save(gossips)
    
    CSV.open('db/gossip.csv', 'w') do |csv|

      csv << [@author, @content]
    end
    puts "Les données ont été sauvegardées avec succès dans db/gossip.csv"
  end

  # lit les gossips depuis un fichier CSV et les affiche
  def self.all
    file_path = 'db/gossip.csv'
    unless File.exist?(file_path)
      puts "Le fichier #{file_path} n'existe pas."
      return []
    end
    all_gossips = []
    CSV.read(file_path).each do |line|
      all_gossips << Gossip.new(line[0], line[1])
    end
    all_gossips # <=> return all_gossips
  end
  # une méthode def self.xxx est une méthode de classe qui s'appelle en faisant NomDeTaClasse.xxx
  # une méthode def xxx est une méthode d'instance qui s'appelle en faisant nom_de_l_instance.xxx

end
