//la classe Siege
class Siege {
  String code;
  bool estOccupe;

  //Constructeur
  Siege(this.code, {this.estOccupe = false});

  String toString() {
    return "$code: ${estOccupe ? "Occupe" : "Libre"}";
  }
}

//La classe SalleCinema
class SalleCinema {
  Map<String, Siege> sieges = {};

  //Constructeur
  SalleCinema() {
    for (var x = 1; x <= 10; x++) {
      sieges["A$x"] = Siege("A$x");
    }
  }

  //Afficher les sieges de la salle
  void afficherSieges() {
    for (var x in sieges.values) {
      print(x);
    }
  }

  //void reserver une place
  void reserver(String numero) {
    var siegeRecherche = sieges[numero];
    if (!sieges.containsKey(numero)) {
      throw Exception("Siège inexistant");
    } else if (siegeRecherche!.estOccupe) {
      throw Exception("le siège est déjà pris");
    } else {
      siegeRecherche.estOccupe = true;
    }
  }
}
