import 'package:flutter/material.dart';
import 'package:sigmart/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.productName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text("Description: ${product.fields.description}"),
            const SizedBox(height: 8),
            Text("Price: ${product.fields.price}"),
            const SizedBox(height: 8),
            Text("Rating: ${product.fields.rating}"),
            const SizedBox(height: 8),
            Text("Date Added: ${product.fields.date}"),
          ],
        ),
      ),
    );
  }
}
