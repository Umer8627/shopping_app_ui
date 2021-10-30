import 'package:flutter/material.dart';
import 'package:flutter_online_shop_ui_design_part_2/constant.dart';
import 'package:flutter_online_shop_ui_design_part_2/models/products.dart';
import 'package:flutter_online_shop_ui_design_part_2/screens/home/components/categories.dart';
import 'package:flutter_online_shop_ui_design_part_2/screens/home/components/details_screen.dart';
import 'package:flutter_online_shop_ui_design_part_2/screens/home/components/item-card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: kDefaultPadding,
                  mainAxisSpacing: kDefaultPadding),
              itemCount: products.length,
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                products: products[index],
                              )));
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// we need stateful widget for our categories
