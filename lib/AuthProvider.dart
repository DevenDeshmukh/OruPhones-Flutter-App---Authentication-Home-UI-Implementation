import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;
  String _userName = "";

  bool get isAuthenticated => _isAuthenticated;
  String get userName => _userName;

  void login(String name) {
    _isAuthenticated = true;
    _userName = name;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    _userName = "";
    notifyListeners();
  }
}