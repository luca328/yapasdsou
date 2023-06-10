import 'package:flutter/material.dart';

class CustomImages {
  static String tacos = "lib/assets/images/tacos.png";
  static String bar = "lib/assets/images/bar.png";
  static String barathon = "lib/assets/images/barathon.png";
  static String basicFit = "lib/assets/images/basic_fit.png";
  static String biliJeu = "lib/assets/images/bili_jeu.png";
  static String chambre = "lib/assets/images/chambre.png";
  static String otacos = "lib/assets/images/otacos.png";
  static String sport = "lib/assets/images/sport.png";
  static String profilePicture = "lib/assets/images/profile_picture.png";

  static IconData getIcon(String name) {
    switch (name) {
      case "shopping_bag_outlined":
        return Icons.shopping_bag_outlined;
      case "directions_run_outlined":
        return Icons.directions_run_outlined;
      case "train_outlined":
        return Icons.train_outlined;
      case "celebration_outlined":
        return Icons.celebration_outlined;
    }
    return Icons.access_time_rounded;
  }

  static String getImage(String name) {
    switch (name) {
      case "tacos":
        return tacos;
      case "bar":
        return bar;
      case "barathon":
        return barathon;
      case "basicfit":
        return basicFit;
      case "bilijeu":
        return biliJeu;
      case "chambre":
        return chambre;
      case "otacos":
        return otacos;
      case "sport":
        return sport;
      case "profilepicture":
        return profilePicture;
    }
    return tacos;
  }
}
