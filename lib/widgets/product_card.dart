import 'package:flutter/material.dart';
import 'package:cs3midlogin/models/products.dart';

class ProductCard extends StatelessWidget {
  final Products product;

  const ProductCard({super.key, required this.product});

  String capitalizeEachWord(String text) {
    return text.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: Image.network(product.image),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "Php ${product.price.toStringAsFixed(2)}",
                  style: const TextStyle(fontSize: 16, color: Colors.green),
                ),
                const SizedBox(height: 5),
                Text(
                  product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  capitalizeEachWord(product.category),
                  style: const TextStyle(color: Colors.blueGrey),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "${product.rating.rate}",
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Text(' Product Ratings'),
                    Text(' (${product.rating.count})'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
