import 'package:flutter/material.dart';

class MainMenuController with ChangeNotifier {
  String location = "Seoul";
  void updateLocation(String newLocation) {
    location = newLocation;
    notifyListeners();
  }
}
