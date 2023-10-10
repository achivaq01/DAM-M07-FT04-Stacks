import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppData with ChangeNotifier {
// App status
  bool isSidebarLeftVisible = false;
  bool isSiderbarRightVisible = false;
  Color _textColor = Color.fromARGB(255, 49, 49, 49);
  Color get textColor => _textColor;

// Toggle sidebar left
  void toggleSidebarLeft() {
    isSidebarLeftVisible = !isSidebarLeftVisible;
    notifyListeners();
  }

  void toggleSidebarRight() {
    isSiderbarRightVisible = !isSiderbarRightVisible;
    notifyListeners();
  }

  void changeColor(Color newColor) {
    _textColor = newColor;
    notifyListeners();
  }
}
