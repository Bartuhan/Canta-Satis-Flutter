import 'package:eticaret_deneme/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'card_counter.dart';

class CounterWithFavButton extends StatefulWidget {
  const CounterWithFavButton({
    super.key,
  });

  @override
  State<CounterWithFavButton> createState() => _CounterWithFavButtonState();
}

class _CounterWithFavButtonState extends State<CounterWithFavButton> {
  int favNum = 0;
  Color favColor = kTextColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CardCounter(),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(favNum.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: favColor, fontWeight: FontWeight.bold)),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  favNum++;
                  favColor = Colors.red.shade400;
                });
              },
              child: Container(
                height: 32,
                width: 32,
                decoration: const BoxDecoration(
                    color: Colors.red, shape: BoxShape.circle),
                padding: const EdgeInsetsDirectional.all(8),
                child: SvgPicture.asset("assets/icons/heart.svg"),
              ),
            ),
          ],
        )
      ],
    );
  }
}
