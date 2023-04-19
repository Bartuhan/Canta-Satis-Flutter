import 'package:flutter/material.dart';

import '../../../constants.dart';

class CardCounter extends StatefulWidget {
  const CardCounter({Key? key}) : super(key: key);

  @override
  State<CardCounter> createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            icon: const Icon(Icons.remove),
            press: () {
              setState(() {
                if (numOfItems > 1) numOfItems--;
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        buildOutlineButton(
            icon: const Icon(Icons.add),
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({required Icon icon, required Function() press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: ButtonStyle(
            //padding: EdgeInsets.zero,
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13.0))),
            padding: const MaterialStatePropertyAll(EdgeInsets.zero)),
        onPressed: press,
        child: icon,
      ),
    );
  }
}
