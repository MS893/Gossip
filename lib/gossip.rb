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

  # lit les gossips depuis un fichier CSV et les affiche
  def self.read_csv
    file_path = 'db/gossip.csv'
    unless File.exist?(file_path)
      puts "Le fichier #{file_path} n'existe pas."
      return []
    end
    puts "Contenu du fichier CSV :"
    data = CSV.read(file_path)
    return data
    # code en utilisant CSV.foreach (permet de formater la sortie) :
    #all_gossips = []
    #CSV.read('db/gossip.csv').each do |csv_line|
    #  all_gossips << Gossip.new(csv_line[0], csv_line[1])
    #end
    #return all_gossips
  end

end
