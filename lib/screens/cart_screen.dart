import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product.dart'; // Import the cart provider

class CartScreen extends ConsumerWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider); // Watch the cart state

    // Calculate the total price
    double totalPrice = 0.0;
    for (var product in cart) {
      totalPrice += product.price;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: cart.isEmpty
          ? const Center(child: Text('Your cart is empty'))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final product = cart[index];
                      return ListTile(
                        leading: Image.asset(
                          product.imageURL.isNotEmpty
                              ? product.imageURL[0]
                              : 'assets/placeholder.png',
                          width: 50,
                          height: 50,
                        ),
                        title: Text(product.title),
                        subtitle: Text('${product.price} TND'),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove_shopping_cart),
                          onPressed: () {
                            // Remove product from the cart
                            ref.read(cartProvider.notifier).state =
                                cart.where((item) => item != product).toList();
                          },
                        ),
                      );
                    },
                  ),
                ),
                // Display total price
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$totalPrice TND',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // Go to Payment button
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Add your payment logic here
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Checkout'),
                          content: Text('Total amount: $totalPrice TND'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                // Perform checkout actions here
                                Navigator.of(context).pop();
                              },
                              child: const Text('Confirm'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                          ],
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Button color
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                    ),
                    icon: const Icon(Icons.payment), // Payment icon
                    label: const Text('Go to Payment'), // Updated text
                  ),
                ),
              ],
            ),
    );
  }
}
