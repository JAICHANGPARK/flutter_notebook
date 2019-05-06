import 'package:flutter/cupertino.dart';
import 'package:flutter_notebook/cupertino_store_app/model/product.dart';
import 'package:flutter_notebook/cupertino_store_app/styles/app_styles.dart';
import 'package:intl/intl.dart';

class ShoppingCartItem extends StatelessWidget {
  final Product product;
  final int index;
  final bool lastItem;
  final int quantity;
  final NumberFormat formatter;

  const ShoppingCartItem(
      {@required this.product,
      @required this.index,
      @required this.lastItem,
      @required this.quantity,
      @required this.formatter});

  @override
  Widget build(BuildContext context) {
    final row = SafeArea(
      top: false,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 8),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                product.assetName,
                package: product.assetPackage,
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          product.name,
                          style: Styles.productRowItemName,
                        ),
                        Text(
                          '${formatter.format(quantity * product.price)}',
                          style: Styles.productRowItemName,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '${quantity > 1 ? '$quantity x ' : ''}'
                      '${formatter.format(product.price)}',
                      style: Styles.productRowItemPrice,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    return row;
  }
}
