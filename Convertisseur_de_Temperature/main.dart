import 'dart:io';

void main() {
  //Entrer la température
  stdout.write("Entrez la temperature (Ex: 30): ");
  var entree = stdin.readLineSync();

  //Entrer l'unité de la température
  stdout.write("Convertir en [(F) pour Fahrenheit ou (C) pour celsius]: ");
  var unitee = stdin.readLineSync()!.toLowerCase();

  //convertir la valeur String de l'entrée en double
  var temperature = double.tryParse(entree!);

  //Convertir la temperature
  double resultat = 0;
  if (unitee == "f") {
    resultat = temperature! * (1.8) + 32;
    print("$temperature °C est égal à $resultat °F");
  } else if (unitee == "c") {
    resultat = (temperature! - 32) / 1.8;
    print("$temperature °F est égal à $resultat °C");
  } else {
    print("Erreur de choix");
  }
}
