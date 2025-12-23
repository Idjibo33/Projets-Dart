enum Priorite { faible, moyenne, forte }

//class Tâche
class Tache {
  String titre;
  Priorite tachePriorite;
  DateTime dateEcheance;

  //Les constructeurs
  Tache(this.titre, this.tachePriorite, this.dateEcheance);
}

//class GestionTaches
class GestionTaches {
  List<Tache> mesTaches = [];

  //Les constructeurs
  GestionTaches(this.mesTaches);

  //Ajouter une tache
  void ajouterTache(Tache t) {
    mesTaches.add(t);
  }

  //Afficher les taches avec une forte priorité
  List<Tache> tachesPlusImportantes() {
    List<Tache> x = [];
    x = mesTaches
        .where((element) => element.tachePriorite == Priorite.forte)
        .toList();
    return x;
  }

  //Trier les tâches par date
  List<Tache> tachesParDate() {
    List<Tache> listTriee = mesTaches;
    listTriee.sort((a, b) => a.dateEcheance.compareTo(b.dateEcheance));
    return listTriee;
  }

  //Trouver tâche par titre
  Tache? trouverTacheParTitre(String t) {
    try {
      return mesTaches.firstWhere(
        (element) => element.titre.toLowerCase() == t.toLowerCase(),
      );
    } catch (e) {
      return null;
    }
  }
}
