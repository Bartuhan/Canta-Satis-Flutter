import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            width: 60,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: product.color,
                ),
                borderRadius: BorderRadius.circular(18)),
            child: IconButton(
              icon: SvgPicture.asset("assets/icons/add_to_cart.svg",
                  color: product.color),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) =>
                      const AlertDialog(title: Text("Add to cart")),
                );
                Future.delayed(const Duration(seconds: 1))
                    .then((value) => Navigator.pop(context));
              },
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        const AlertDialog(title: Text("Buy Success")),
                  );
                  Future.delayed(const Duration(seconds: 1))
                      .then((value) => Navigator.pop(context));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(product.color),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(18),
                    ),
                  ),
                ),
                child: Text(
                  "buy now".toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
