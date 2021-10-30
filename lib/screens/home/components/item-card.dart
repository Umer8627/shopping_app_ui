import 'package:flutter/material.dart';
import 'package:flutter_online_shop_ui_design_part_2/constant.dart';
import 'package:flutter_online_shop_ui_design_part_2/models/products.dart';

class ItemCard extends StatefulWidget {
  final ProductModel product;
  final Function press;
  const ItemCard({Key key, this.product, this.press}) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: widget.product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(widget.product.image),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              widget.product.title,
              style: TextStyle(fontSize: 16, color: kTextColor),
            ),
          ),
          Text(
            "\$${widget.product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
