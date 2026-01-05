import 'classes.dart';

void main() {
  //Initialisation
  var gestion = GestionTaches([]);

  //Ajout de tâches
  gestion.ajouterTache(
    Tache("Coder en Dart", Priorite.forte, DateTime(2025, 12, 31)),
  );
  gestion.ajouterTache(
    Tache("Faire du sport", Priorite.faible, DateTime(2025, 12, 20)),
  );
  gestion.ajouterTache(
    Tache("Acheter du pain", Priorite.moyenne, DateTime(2025, 12, 25)),
  );
  print("Nombre de tâches : ${gestion.mesTaches.length}");

  //tri des tâches par date
  var triees = gestion.tachesParDate();
  for (var t in triees) {
    print("${t.dateEcheance.day}/${t.dateEcheance.month} : ${t.titre}");
  }

  //filtrage des taches à Priorité Forte
  var importantes = gestion.tachesPlusImportantes();
  print("Tâches urgentes trouvées : ${importantes.length}");
  if (importantes.isNotEmpty) {
    print("Première tâche urgente : ${importantes.first.titre}");
  }

  //Recherche
  var trouve = gestion.trouverTacheParTitre("Coder en Dart");
  print(
    "Recherche 'Coder en Dart' : ${trouve != null ? 'Trouvé' : 'Non trouvé '}",
  );

  var introuvable = gestion.trouverTacheParTitre("Voyager sur Mars");
  print(
    "Recherche 'Voyager sur Mars' : ${introuvable != null ? 'Trouvé' : 'Non trouvé'}",
  );
}
