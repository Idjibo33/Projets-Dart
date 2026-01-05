//La class Livre
class Livre {
  String titre;
  String auteur;
  bool estEmprunte;

  //Constructeurs
  Livre(this.titre, this.auteur, {this.estEmprunte = false});

  String toString() {
    return "$titre de $auteur";
  }
}

//La class Adherent
class Adherent {
  String nom;
  List<Livre> livresEmpruntes = [];

  //Constructeurs
  Adherent(this.nom, this.livresEmpruntes);

  //Emprunter un livre
  void emprunterLivre(Livre livre) {
    if (livre.estEmprunte) {
      throw Exception("Le Livre $livre n'est plus disponible");
    } else {
      livresEmpruntes.add(livre);
      livre.estEmprunte = true;
      print("Succès: $livre a été emprunté par $nom ");
    }
  }
}
