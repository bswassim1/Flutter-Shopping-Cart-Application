import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  const Product(
      {required this.id,
      required this.title,
      required this.descreption,
      required this.details,
      required this.oldPrice,
      required this.price,
      required this.imageURL,
      required this.category,
      required this.color});

  final String id;
  final String title;
  final String descreption;
  final String details;
  final double oldPrice;
  final double price;
  final List<String> imageURL;
  final Category category;
  final List<Color> color;
}

enum Category { smartPhone, smartWatch, smartTV, storage, chairs }


// Product model




// State providers for cart and favorites
final cartProvider = StateProvider<List<Product>>((ref) => []);
final favoritesProvider = StateProvider<List<Product>>((ref) => []);

