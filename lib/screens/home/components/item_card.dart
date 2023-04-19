import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });
  final Product product;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(product.title,
                style: const TextStyle(
                  color: kTextLightColor,
                )),
          ),
          Text(
            "\$${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
