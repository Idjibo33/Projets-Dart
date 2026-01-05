import 'classes.dart';

void main() {
  var maSalle = SalleCinema();

  print(" DÉBUT DU TEST DE ROBUSTESSE ");

  //Réservation normale
  print("Réservation normale de A1...");
  maSalle.reserver("A1");

  print("Résultat : ${maSalle.sieges["A1"]}\n");

  //Doublon (Le siège est déjà pris)
  print("2. Test : Tentative de réserver A1 une deuxième fois...");
  try {
    maSalle.reserver("A1");
  } catch (e) {
    print("L'erreur a bien été détectée -> $e");
  }

  //Code inexistant (Le siège n'existe pas)
  print("Tentative de réserver un siège imaginaire (Z99)...");
  try {
    maSalle.reserver("Z99");
  } catch (e) {
    print("L'erreur a bien été détectée -> $e");
  }

  //Remplissage partiel
  print("Réservation de A5 et A10...");
  maSalle.reserver("A5");
  maSalle.reserver("A10");
  print("Succès");

  // AFFICHAGE FINAL
  print(" BILAN FINAL DE LA SALLE ");
  maSalle.afficherSieges();
}
