import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  List<String> _products = [];
  bool _isLoading = false;

  List<String> get products => _products;
  bool get isLoading => _isLoading;

  void fetchProducts() async {
    _isLoading = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 2)); // Simulating API call

    _products.addAll([
      'Product 1',
      'Product 2',
      'Product 3',
      'Product 4',
      'Product 5',
    ]);

    _isLoading = false;
    notifyListeners();
  }
}
