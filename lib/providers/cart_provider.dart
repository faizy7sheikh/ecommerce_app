import 'package:ecommerce_app/models/product_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
  final List<Product> _cart = [];

  // get cart item
  List<Product> get cart => _cart;

  // toggle favourite
  void toggleFavorite(Product product){
    if(_cart.contains(product)){
      for(Product element in _cart){
        element.quantity++;
      }
    }else{
      _cart.add(product);
    }
    notifyListeners();
  }
}