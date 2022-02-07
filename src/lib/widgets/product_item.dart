import 'package:flutter/material.dart';
import 'package:flutter_beautyshop_challenge/models/product.dart';
import 'package:flutter_beautyshop_challenge/screens/details.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => Details(product: product),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          height: 260,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              Expanded(
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(product.image),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 13,
                      fontFamily: 'Falling Sky',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 4.0,
                    left: 20.0,
                  ),
                  child: Text(product.description,
                      style: const TextStyle(
                        fontSize: 11,
                        fontFamily: 'Falling Sky Light',
                        color: Colors.grey,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 4.0,
                  right: 10.0,
                  bottom: 12.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 20.0),
                        child: Text("\$${product.price}",
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'Falling Sky',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    // const Icon(Icons.favorite_border, size: 30,),
                    Container(
                      decoration: const BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 6.0,
                              offset: Offset(1, 1))
                        ],
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          size: 12,
                          color: Colors.white,
                        ),
                      ),
                      height: 26.0,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
