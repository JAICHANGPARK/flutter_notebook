import 'package:flutter/cupertino.dart';
import 'package:flutter_notebook/cupertino_store_app/model/app_state_model.dart';
import 'package:flutter_notebook/cupertino_store_app/model/product.dart';
import 'package:flutter_notebook/cupertino_store_app/styles/app_styles.dart';
import 'package:provider/provider.dart';

class ProductRowItem extends StatelessWidget {
  final Product product;
  final int index;
  final bool lastItem;

  const ProductRowItem({this.product, this.index, this.lastItem});

  @override
  Widget build(BuildContext context) {
    final row = SafeArea(
      top: false,
      bottom: false,
      minimum: const EdgeInsets.only(top: 8, left: 16, bottom: 8, right: 8),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              product.assetName,
              package: product.assetPackage,
              fit: BoxFit.cover,
              width: 76,
              height: 76,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.name,
                    style: Styles.productRowItemName,
                  ),
                  const Padding(padding: const EdgeInsets.only(top: 8)),
                  Text(
                    '\$${product.price}',
                    style: Styles.productRowItemPrice,
                  )
                ],
              ),
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(
              CupertinoIcons.plus_circled,
              semanticLabel: 'Add',
            ),
            onPressed: () {
              final model = Provider.of<AppStateModel>(context);
              model.addProductToCart(product.id);
            },
          )
        ],
      ),
    );
    if (lastItem) {
      return row;
    }
    return Column(
      children: <Widget>[
        row,
        Padding(
          padding: const EdgeInsets.only(
            left: 100,
            right: 16,
          ),
          child: Container(
            height: 1,
            color: Styles.productRowDivider,
          ),
        ),
      ],
    );
  }
}
















