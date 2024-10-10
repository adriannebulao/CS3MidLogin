import 'package:cs3midlogin/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:cs3midlogin/models/products.dart';
import 'package:cs3midlogin/services/products_api.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<Products> allProducts = [];

  @override
  void initState() {
    super.initState();
    loadProducts();
  }

  loadProducts() async {
    List<Products> products = await ProductApi().getProducts();
    setState(() {
      allProducts = products;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            direction: Axis.horizontal,
            children: allProducts.map((oneProduct) {
              return ProductCard(product: oneProduct);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
