import 'classes.dart';

void main() {
  var monBibliotheque = Bibliotheque();

  //Création de mon catalogue
  //Ajout de trois autres livres à la bibiliothèque
  var l1 = Livre("Sarraounia", "Abdoulaye Mamani", false);
  var l2 = Livre("Contes du Niger", "Boubou Hama", false);
  var l3 = Livre("Les bouts de bois de Dieu", "Ousmane Sembène", false);
  monBibliotheque.ajouterLivre(l1);
  monBibliotheque.ajouterLivre(l2);
  monBibliotheque.ajouterLivre(l3);

  // Ajouter membres
  var m1 = Adherent("Ismael", []);
  var m2 = Adherent("Djibo", []);
  var m3 = Adherent("Adamou", []);
  monBibliotheque.membres.add(m1);
  print("Le membre ${m1.nom} a été ajouté avec succès");
  monBibliotheque.membres.add(m2);
  print("Le membre ${m2.nom} a été ajouté avec succès");
  monBibliotheque.membres.add(m3);
  print("Le membre ${m3.nom} a été ajouté avec succès");

  try {
    m1.emprunterLivre(l1);
    m1.emprunterLivre(l2);
    m1.emprunterLivre(l3);
    monBibliotheque.genererRapport();
  } catch (e) {
    print(e);
  }
  ;
}
