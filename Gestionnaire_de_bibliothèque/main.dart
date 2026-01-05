import 'classes.dart';

void main() {
  //Ajout d'un livre de la bibliothèque
  var livre1 = Livre("L'enfant noir", "Camara Laye");

  //Ajout de deux adhérents
  var mohamed = Adherent("Mohamed", []);
  var sani = Adherent("Sani", []);

  //Mohamed emprunte le livre "L'enfant noir"
  try {
    mohamed.emprunterLivre(livre1);
  } catch (e) {
    print(e);
  }

  //sani essaie d'emprunter le même livre "L'enfant noir"
  try {
    sani.emprunterLivre(livre1);
  } catch (e) {
    print(e);
  }

  //Ajout d'un autre adhérent
  var ismael = Adherent("Ismael", []);

  //Ajout de trois autres livres à la bibiliothèque
  var livre2 = Livre("Sarraounia", "Abdoulaye Mamani");
  var livre3 = Livre("Contes du Niger", "Boubou Hama");
  var livre4 = Livre("Les bouts de bois de Dieu", "Ousmane Sembène");

  //L'adhérent "ismael" emprunte les livres1,2,3
  ismael.emprunterLivre(livre2);
  ismael.emprunterLivre(livre3);
  ismael.emprunterLivre(livre4);

  //Le nombre de livre que l'adhérent "Ismael" a emprunté
  print(
    "le nombre de livres emprunté par l'adhérent Ismael = ${ismael.livresEmpruntes.length}",
  );

  //Ajout d'un autre adhérent
  var adamou = Adherent("Adamou", []);

  //Ajout d'un livre à la biblithèque
  var livre5 = Livre("Sous l'orage", "Seydou Badian");

  //L'adhérent "Adamou" emprunte le livre "Sous l'orage" une première fois
  try {
    adamou.emprunterLivre(livre5);
  } catch (e) {
    print(e);
  }
  ;

  //L'adhérent "Adamou" emprunte le livre "Sous l'orage" une deuxième fois
  try {
    adamou.emprunterLivre(livre5);
  } catch (e) {
    print(e);
  }
  ;
}
