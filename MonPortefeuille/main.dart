import 'classes.dart';

void main() {
  var monPorteFeuille = Portefeuille();
  monPorteFeuille.depot(500);
  monPorteFeuille.retrait(50, "Courses");
  monPorteFeuille.retrait(200, "Cadeau");
  monPorteFeuille.afficherHistorique();
}
