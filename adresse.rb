class Adresse
  attr_accessor :rue, :code, :ville, :pays
  def initialize
    @rue= @code= @ville= @pays = ""
  end

  def to_s
    "       #{@rue}\n" +\
    "       #{@code}, #{@ville}\n" +\
    "       #{@pays}."
  end
end

class Personne
  attr_accessor :prenom, :nom, :email, :adresse
  def initialize
    @prenom = @nom = @email = ""
    @adresse = Adresse.new
  end

  def nom_complet
    @prenom + " " + @nom
  end

  def to_s
    "       #{@prenom} #{@nom} \n" +\
    "       #{@email}  \n"  +\
    "#{@adresse}."
  end
end

class Carnet
  ######################################
  # Methodes de base:                  #
  #               initialize           #
  #               ajoute               #
  #               retire               #
  ######################################
  attr_accessor :personnes
  def initialize
    @personnes = []
  end

  def ajoute(personne)
    @personnes.push(personne)
    @personnes = @personnes.sort { |a, b| par_nom(a, b) }
  end

  # retire tous les doublons
  def retire(personne)
    @personnes.delete(personne)
  end

  ######################################
  # Itereateurs:                       #
  #               chaque_personne      #
  #               chaque_adresse       #
  ######################################

  def chaque_personne
    @personnes.each { |p| yield(p) }
  end

  def chaque_adresse
    @personnes.each { |p| yield(p.adresse) }
  end
  ######################################
  # Fonctions de tri:                  #
  #               par_nom              #
  ######################################
  # Private                            #
  ######################################

  private

  def par_nom(a, b)
    if a.prenom == b.prenom
      a.nom <=> b.nom
    else
      a.prenom <=> b.prenom
    end
  end
  
end
