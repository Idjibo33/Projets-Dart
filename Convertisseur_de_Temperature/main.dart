import 'dart:io';

void main() {
  bool continuer = true;
  while (continuer == true) {
    try {
      var temperature = entrervaleurTemperature();
      var unite = choisirUnite();
      switch (unite) {
        case "F":
          convertirCelsius(temperature);
        case "C":
          convertirFahrenheit(temperature);
        default:
          "Choix invalide";
      }
    } catch (e) {
      print(e);
    }
    ;
    stdout.write("Voulez-vous continuer? [(O) pour oui (N) pour non: ");
    String? reponse = stdin.readLineSync();
    if (reponse == "N") {
      continuer = false;
      print("Au revoir");
    }
  }
}

double convertirCelsius(double celsius) {
  double resultat = 0;
  resultat = celsius * (1.8) + 32;
  print("$celsius °C est égal à ${resultat.toStringAsFixed(2)} °F");
  return resultat;
}

double convertirFahrenheit(double fahrenheit) {
  double resultat = 0;
  resultat = (fahrenheit - 32) / 1.8;
  print("$fahrenheit °F est égal à ${resultat.toStringAsFixed(2)} °C");
  return resultat;
}

double entrervaleurTemperature() {
  stdout.write("Entrez la temperature (Ex: 30): ");
  double? temperature = 0;
  var entree = stdin.readLineSync();

  if (entree == null || entree.isEmpty) {
    throw Exception("Entrée vide");
  }
  temperature = double.tryParse(entree);
  if (temperature == null) {
    throw Exception("`Ce n'est pas un nombre valide");
  }
  return temperature;
}

String choisirUnite() {
  //Entrer l'unité de la température
  stdout.write("Convertir en [(F) pour Fahrenheit ou (C) pour celsius]: ");
  var unitee = stdin.readLineSync();
  if (unitee == "F" || unitee == "C") {
    return unitee!;
  } else {
    throw Exception("Unité invalide (choisissez F ou C)");
  }
}
