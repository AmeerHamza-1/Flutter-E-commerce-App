import 'package:flutter/material.dart';

class WishlistProvider with ChangeNotifier {
  Set<int> _wishlistItems = {};

  Set<int> get wishlistItems => _wishlistItems;

  void toggleWishlist(int index) {
    if (_wishlistItems.contains(index)) {
      _wishlistItems.remove(index);
    } else {
      _wishlistItems.add(index);
    }
    notifyListeners();
  }

  bool isInWishlist(int index) {
    return _wishlistItems.contains(index);
  }
}
