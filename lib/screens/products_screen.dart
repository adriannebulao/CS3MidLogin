import 'package:cs3midlogin/models/products.dart';
import 'package:cs3midlogin/services/products_api.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<Products> allProducts = [];
  @override
  void initState() {
    // TODO: implement initState
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
            return Card(
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.network(oneProduct.image),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(oneProduct.title),
                        Text(oneProduct.price.toString()),
                        Text(oneProduct.description),
                        Text(oneProduct.category),
                        Text(oneProduct.rating.rate.toString()),
                        Text(oneProduct.rating.count.toString()),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      )),
    );
  }
}
