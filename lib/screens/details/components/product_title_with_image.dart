import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Aristogratic Hand Bag",
              style: TextStyle(color: Colors.white)),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: "Price\n", style: TextStyle(color: Colors.white)),
                TextSpan(
                    text: "\$ ${product.price}",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ])),
              const SizedBox(height: kDefaultPadding),
              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
