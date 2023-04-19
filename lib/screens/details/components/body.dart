import 'package:eticaret_deneme/constants.dart';
import 'package:flutter/material.dart';

import '../../../models/product.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    //Size tanımı
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.15,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        const SizedBox(height: kDefaultPadding / 2),
                        Description(product: product),
                        const SizedBox(height: kDefaultPadding / 2),
                        const CounterWithFavButton(),
                        const SizedBox(height: kDefaultPadding / 2),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//GestureDetector(
//                               onTap: () {
//                                 showDialog(
//                                   context: context,
//                                   builder: (context) =>
//                                       AlertDialog(title: Text("Succes")),
//                                 );
//                                 Future.delayed(const Duration(seconds: 1))
//                                     .then((value) => Navigator.pop(context));
//                               },
//                               child: Container(
//                                 padding: EdgeInsets.zero,
//                                 height: 60,
//                                 width: 300,
//                                 decoration: BoxDecoration(
//                                     color: product.color,
//                                     borderRadius:
//                                         BorderRadiusDirectional.circular(15)),
//                                 child: Center(
//                                   child: Text("BUY NOW",
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .headlineSmall!
//                                           .copyWith(
//                                               color: Colors.white,
//                                               fontWeight: FontWeight.bold)),
//                                 ),
//                               ),)
