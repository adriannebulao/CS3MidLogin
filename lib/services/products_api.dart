import 'package:cs3midlogin/models/products.dart';
import 'package:dio/dio.dart';

class ProductApi {
  final baseUrl = 'https://fakestoreapi.com/products';
  final dio = Dio();

  getProducts() async {
    Response response = await dio.get(baseUrl);

    List<Products> allProducts = [];
    try {
      if (response.statusCode == 200) {
        for (var i = 0; i < response.data.length; i++) {
          final currentProduct = response.data[i];
          Rating productRating = Rating(
              rate: currentProduct['rating']['rate'],
              count: currentProduct['rating']['count']);
          Products product = Products(
              id: currentProduct['id'],
              title: currentProduct['title'],
              price: currentProduct['price'],
              description: currentProduct['description'],
              category: currentProduct['category'],
              image: currentProduct['image'],
              rating: productRating);
          allProducts.add(product);
        }
      }
    } catch (error) {
      print(error.toString());
    }

    return allProducts;
  }
}
