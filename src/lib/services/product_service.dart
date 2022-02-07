import 'package:flutter_beautyshop_challenge/models/product.dart';

class ProductService {
  List<Product> getProducts() {
    return [
      Product(
        name: 'Moisturiser',
        image: 'images/moisturiser_01.png',
        description: 'Oil balancing mask',
        price: 11.99,
        gallery: [
          'images/moisturiser_01.png',
          'images/moisturiser_02.jpg',
          'images/moisturiser_03.jpg'
        ],
      ),
      Product(
        name: 'Facial Cleanser',
        image: 'images/facial_cleanser_01.png',
        description: 'Citrus refreshes senses',
        price: 9.99,
        gallery: [
          'images/facial_cleanser_01.png',
          'images/facial_cleanser_02.jpg',
          'images/facial_cleanser_03.jpg'
        ],
      ),
      Product(
        name: 'Cleansing Oil',
        image: 'images/cleansing_oil_01.png',
        description: 'Super greens',
        price: 12.99,
        gallery: [
          'images/cleansing_oil_01.png',
          'images/cleansing_oil_02.jpg',
          'images/cleansing_oil_03.jpg'
        ],
      ),
      Product(
        name: 'Micellar Cleansing',
        image: 'images/micellar_01.png',
        description: 'Signature water',
        price: 10.99,
        gallery: [
          'images/micellar_01.png',
          'images/micellar_02.jpg',
          'images/micellar_03.jpg'
        ],
      ),
      Product(
        name: 'Shampoo',
        image: 'images/shampoo_01.png',
        description: 'Citrus refreshes senses',
        price: 8.99,
        gallery: [
          'images/shampoo_01.png',
          'images/shampoo_02.jpg',
          'images/shampoo_03.jpg'
        ],
      ),
    ];
  }
}
