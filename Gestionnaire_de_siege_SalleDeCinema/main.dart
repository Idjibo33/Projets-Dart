import 'models.dart';

void main() {
  var maSalle = SalleCinema();

  print(" DÉBUT DU TEST DE ROBUSTESSE ");

  // TEST 1 : Réservation normale
  print("1. Test : Réservation normale de A1...");
  maSalle.reserver("A1");
  // On vérifie visuellement
  print("Résultat : ${maSalle.sieges["A1"]}\n");

  // TEST 2 : Doublon (Le siège est déjà pris)
  print("2. Test : Tentative de réserver A1 une deuxième fois...");
  try {
    maSalle.reserver("A1");
  } catch (e) {
    print("L'erreur a bien été détectée -> $e");
  }

  // TEST 3 : Code inexistant (Le siège n'existe pas)
  print("3. Test : Tentative de réserver un siège imaginaire (Z99)...");
  try {
    maSalle.reserver("Z99");
  } catch (e) {
    print("L'erreur a bien été détectée -> $e");
  }

  // TEST 4 : Remplissage partiel
  print("4. Test : Réservation de A5 et A10...");
  maSalle.reserver("A5");
  maSalle.reserver("A10");
  print("Succès");

  // AFFICHAGE FINAL
  print(" BILAN FINAL DE LA SALLE ");
  maSalle.afficherSieges();
}
