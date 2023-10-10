import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppData with ChangeNotifier {
// App status
  bool isSidebarLeftVisible = false;
  bool isSiderbarRightVisible = false;

// Toggle sidebar left
  void toggleSidebarLeft() {
    isSidebarLeftVisible = !isSidebarLeftVisible;
    notifyListeners();
  }

  void toggleSidebarRight() {
    isSiderbarRightVisible = !isSiderbarRightVisible;
    notifyListeners();
  }
}
