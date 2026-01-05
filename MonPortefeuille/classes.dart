//Créer la classe Transaction

class Transaction {
  double montant;
  String? description;
  DateTime date;
  bool estcredit;

  Transaction({
    required this.montant,
    this.description,
    required this.date,
    required this.estcredit,
  });
}

//Créer la classe Portefeuille
class Portefeuille {
  double _solde = 0;
  List<Transaction> historique = [];

  double get solde => _solde;

  //Methods
  // Déposer de l'argent dans le portefeuille
  void depot(double montant) {
    _solde += montant;
    historique.add(
      Transaction(montant: montant, date: DateTime.now(), estcredit: true),
    );
    print("$montant ajouté au portefeuille");
  }

  //Retirer de l'argent du portefeuille
  void retrait(double montant, String description) {
    if (_solde >= montant) {
      _solde -= montant;
      historique.add(
        Transaction(
          montant: montant,
          description: description,
          date: DateTime.now(),
          estcredit: false,
        ),
      );
      print("$montant retiré du portefeuille pour $description");
    } else {
      print("Solde insuffisant");
    }
  }

  //Afficher l'historique des transactions
  void afficherHistorique() {
    if (historique.isEmpty) {
      print("Aucune transaction");
    } else {
      for (var t in historique) {
        final transaction = t;
        print(
          "${transaction.montant}, ${transaction.estcredit ? "Dépôt" : "Retrait"}, ${transaction.date}",
        );
      }
    }
  }

  // Afficher les dépôts
  void afficherDepot() {
    for (var t in historique.where((element) => element.estcredit == true)) {
      print("${t.montant}, ${t.date}");
    }
  }

  // Afficher les dépôts
  void afficherRetrait() {
    for (var t in historique.where((element) => element.estcredit == false)) {
      print("${t.montant}, ${t.date}");
    }
  }
}
