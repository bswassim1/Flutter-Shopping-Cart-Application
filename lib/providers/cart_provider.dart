import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:exam/models/product.dart';

// Define a provider for the cart
final cartProvider = StateNotifierProvider<CartNotifier, List<Product>>((ref) {
  return CartNotifier();
});

class CartNotifier extends StateNotifier<List<Product>> {
  CartNotifier() : super([]);

  // Add a product to the cart
  void addToCart(Product product) {
    state = [...state, product];
  }

  // Remove a product from the cart
  void removeFromCart(Product product) {
    state = state.where((item) => item != product).toList();
  }

  // Clear all products in the cart
  void clearCart() {
    state = [];
  }
}
