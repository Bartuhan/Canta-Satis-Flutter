import 'package:eticaret_deneme/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: kTextColor,
        ),
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: kTextColor,
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: kTextColor,
            )),
        const SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
