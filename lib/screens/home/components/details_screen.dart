import 'package:flutter/material.dart';
import 'package:flutter_online_shop_ui_design_part_2/constant.dart';
import 'package:flutter_online_shop_ui_design_part_2/models/products.dart';
import 'package:flutter_online_shop_ui_design_part_2/screens/home/components/details_body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel products;
  DetailsScreen({this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: products.color,
      appBar: buildAppBar(context),
      body: DetailsBody(
        products: products,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: products.color,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"), onPressed: () {}),
        SizedBox(
          width: kDefaultPadding / 2,
        ),
      ],
      elevation: 0.0,
    );
  }
}
