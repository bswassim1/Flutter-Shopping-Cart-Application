import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:exam/models/product.dart'; // Assuming you have a Product model

class ProductCart extends ConsumerWidget {
  final Product product;

  const ProductCart({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                product.imageURL.isNotEmpty
                    ? product.imageURL[0]
                    : 'assets/placeholder.png',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            // Product Title and Price
            Text(
              product.title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '${product.price} DT',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            // Product Description
            Text(
              product.descreption ?? "No description available.",
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            // Add to Cart Button
            ElevatedButton(
              onPressed: () {
                ref.read(cartProvider.notifier).update((state) {
                  if (!state.contains(product)) {
                    return [...state, product]; // Add product to cart
                  }
                  return state;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Added to cart')),
                );
              },
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
