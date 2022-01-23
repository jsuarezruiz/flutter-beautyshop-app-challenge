import 'package:flutter/material.dart';
import 'package:flutter_beautyshop_challenge/const.dart';
import 'package:flutter_beautyshop_challenge/models/product.dart';
import 'package:flutter_beautyshop_challenge/services/product_service.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_beautyshop_challenge/widgets/product_item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ProductService productService = ProductService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.0,
        toolbarHeight: 80.0,
        title: const Text(
          "Search Product",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Falling Sky',
          ),
        ),
        centerTitle: true,
        actions: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 24.0),
              height: 40.0,
              width: 40.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage('images/javier.png'),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
        ),
        child: Column(
          children: [
            buildSearchProductWidget(),
            Expanded(
              child: buildProductListWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSearchProductWidget() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12.0,
      ),
      child: Row(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 12,
              ),
              child: TextField(
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Falling Sky',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blueGrey,
                  ),
                  hintText: 'Search',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              height: 48.0,
              width: 48.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.bar_chart_rounded,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProductListWidget() {
    List<Product> products = productService.getProducts();

    return MasonryGridView.count(
      itemCount: products.length + 1,
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 10,
      ),
      // number of columns
      crossAxisCount: 2,
      // vertical gap
      mainAxisSpacing: 18,
      // horizontal gap
      crossAxisSpacing: 28,
      itemBuilder: (context, index) {
        // display each item with a card
        return index == 0
            ? Wrap(
                direction: Axis.vertical,
                children: const [
                  Text(
                    "Found",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Falling Sky Bold',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "10 Results",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Falling Sky Bold',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            : ProductItem(
                product: products[index - 1],
              );
      },
    );
  }
}
