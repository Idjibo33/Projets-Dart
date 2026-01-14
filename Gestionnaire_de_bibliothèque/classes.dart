//La class Livre
class Livre {
  String titre;
  String auteur;
  bool _estEmprunte = false;

  //Constructeurs
  Livre(this.titre, this.auteur, this._estEmprunte);
  bool get estEmprunte => _estEmprunte;

  String toString() {
    return "$titre de $auteur";
  }
}

//La class Adherent
class Adherent {
  String nom;
  List<Livre> livresEmpruntes = [];

  //Constructeur
  Adherent(this.nom, this.livresEmpruntes);

  //Emprunter un livre
  void emprunterLivre(Livre livre) {
    //Vérifier si le livre est disponible
    if (livre._estEmprunte) {
      throw Exception("Le Livre $livre n'est plus disponible");
    } else {
      livresEmpruntes.add(livre);
      livre._estEmprunte = true;
      print("Succès: $livre a été emprunté par $nom ");
    }
  }

  //Rendre un livre
  void rendreLivre(Livre livre) {
    //Vérifier si l'adhérent possède le livre
    if (livresEmpruntes.contains(livre)) {
      livresEmpruntes.remove(livre);
      livre._estEmprunte = false;
    } else {
      throw Exception("Vous ne possédez pas ce livre");
    }
    ;
  }
}

//La classe Bibliotheque
class Bibliotheque {
  List<Livre> catalogue = [];
  List<Adherent> membres = [];

  //Ajouter un livre au catalogue
  void ajouterLivre(Livre livre) {
    catalogue.add(livre);
    print("Succès: $livre a été ajouté au catalogue");
  }

  // Filtrer catalogue par auteur
  void filtrerParAuteur(Livre livre) {
    var livres = catalogue.where((element) => element.auteur == livre.auteur);
    print("Les livres de ${livre.auteur} sont: ${livres.toList()}");
  }

  // Afficher livres disponibles
  void afficherListesDisponibles() {
    var livres = catalogue.where((element) => !element._estEmprunte);
    print("Les livres disponibles sont: ${livres.toList()}");
  }

  //Génerer rapport
  void genererRapport() {
    //Le nombre total de livres qui sont empruntés
    int totalLivresSorties = catalogue
        .where((element) => element.estEmprunte)
        .length;

    print("Le nombre total de livre : ${catalogue.length}");
    print("Le nombre total de livres empruntés: ${totalLivresSorties}");
    //Trouver le lecteur le plus actif
    var superLecteur = membres.last;
    for (Adherent m in membres) {
      if (m.livresEmpruntes.length > superLecteur.livresEmpruntes.length) {
        superLecteur = m;
      }
      ;
    }
    print(
      "Le membre le plus actif est ${superLecteur.nom} avec ${superLecteur.livresEmpruntes.length} livres",
    );
  }
}
