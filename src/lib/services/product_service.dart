import 'package:flutter_beautyshop_challenge/models/product.dart';

class ProductService {
  List<Product> getProducts() {
    return [
      Product(
        name: 'Moisturiser',
        image: 'images/moisturiser_01.png',
        description: 'Oil balancing mask',
        price: 11.99,
      ),
      Product(
        name: 'Facial Cleanser',
        image: 'images/facial_cleanser_01.png',
        description: 'Citrus refreshes senses',
        price: 9.99,
      ),
      Product(
        name: 'Cleansing Oil',
        image: 'images/cleansing_oil_01.png',
        description: 'Super greens',
        price: 12.99,
      ),
      Product(
        name: 'Micellar Cleansing',
        image: 'images/micellar_01.png',
        description: 'Signature water',
        price: 10.99,
      ),
      Product(
        name: 'Shampoo',
        image: 'images/shampoo_01.png',
        description: 'Citrus refreshes senses',
        price: 8.99,
      ),
    ];
  }
}
