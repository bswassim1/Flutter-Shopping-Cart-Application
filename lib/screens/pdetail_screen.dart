import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product.dart';
import '../providers/product_provider.dart'; // Ensure you have cartProvider and favoritesProvider

class PdetailScreen extends ConsumerWidget {
  final Product product;

  const PdetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Fetch the current state of the cart and favorites from Riverpod
    final cart = ref.watch(cartProvider);
    final favorites = ref.watch(favoritesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Détails du Produit',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          // Navigate to Favorites Page
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, '/favorites');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Images
              SizedBox(
                height: 300,
                child: PageView.builder(
                  itemCount: product.imageURL.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      product.imageURL[index], // Assuming asset images
                      fit: BoxFit.contain,
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              // Product Title
              Text(
                product.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Product Prices
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${product.price} TND',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  if (product.oldPrice > product.price)
                    Text(
                      '${product.oldPrice} TND',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              // Product Description
              const Text(
                'Description du Produit',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                product.descreption,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              // Product Category
              Text(
                'Category: ${product.category.name}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Add to Cart and Add to Favorites Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Add to Cart Button
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add product to cart
                      ref.read(cartProvider.notifier).state = [
                        ...cart,
                        product,
                      ];

                      // Show confirmation message
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${product.title} added to cart'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text('Add to Cart'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                    ),
                  ),
                  // Add to Favorites Button
                  ElevatedButton.icon(
                    onPressed: () {
                      // Check if product is already in favorites
                      if (!favorites.contains(product)) {
                        // Add product to favorites
                        ref.read(favoritesProvider.notifier).state = [
                          ...favorites,
                          product,
                        ];

                        // Show confirmation message
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                Text('${product.title} added to favorites'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                '${product.title} is already in favorites'),
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.favorite),
                    label: const Text('Add to Favorites'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
