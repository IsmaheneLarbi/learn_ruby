require './adresse'

adr = Adresse.new
adr.rue = "26 rue de la sablière"
adr.code = "75014"
adr.ville= "Paris"
adr.pays= "France"


mimo = Personne.new
mimo.prenom = "Ismahene"
mimo.nom = "Larbi"
mimo.email= "mimo@mail.com"
mimo.adresse = adr

simo = Personne.new
simo.prenom = "Simo"
simo.nom = "Larbi"
simo.email = "simo@mail.com"

carnet = Carnet.new
carnet.ajoute(simo)
carnet.ajoute(mimo)
carnet.chaque_personne do |p| 
  pp p
  puts "\n"
end
