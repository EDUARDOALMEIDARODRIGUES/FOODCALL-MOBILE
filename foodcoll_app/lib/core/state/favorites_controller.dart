import 'package:flutter/material.dart';

class FavoritesController extends ChangeNotifier {
  FavoritesController._();

  static final FavoritesController instance = FavoritesController._();

  final Set<String> _favorites = {};

  Set<String> get favorites => _favorites;

  bool isFavorite(String collocation) {
    return _favorites.contains(collocation);
  }

  void toggleFavorite(String collocation) {
    if (_favorites.contains(collocation)) {
      _favorites.remove(collocation);
    } else {
      _favorites.add(collocation);
    }

    notifyListeners();
  }
}