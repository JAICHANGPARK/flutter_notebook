import 'package:flutter/cupertino.dart';
import 'package:flutter_notebook/cupertino_store_app/model/app_state_model.dart';
import 'package:flutter_notebook/cupertino_store_app/styles/app_styles.dart';
import 'package:flutter_notebook/cupertino_store_app/ui/widgets/shopping_cart_item.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ShoppingCartTab extends StatefulWidget {
  @override
  _ShoppingCartTabState createState() => _ShoppingCartTabState();
}

class _ShoppingCartTabState extends State<ShoppingCartTab> {
  String name;
  String email;
  String location;
  String pin;
  DateTime dateTime = DateTime.now();
  final _currencyFormat = NumberFormat.currency(symbol: '\$');

  Widget _buildNameField() {
    return CupertinoTextField(
      prefix: const Icon(
        CupertinoIcons.person_solid,
        color: CupertinoColors.lightBackgroundGray,
        size: 28,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      clearButtonMode: OverlayVisibilityMode.editing,
      textCapitalization: TextCapitalization.words,
      autocorrect: false,
      decoration: const BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(width: 0, color: CupertinoColors.inactiveGray))),
      placeholder: "Name",
      onChanged: (newName) {
        setState(() {
          name = newName;
        });
      },
    );
  }

  Widget _buildEmailField() {
    return CupertinoTextField(
      prefix: const Icon(
        CupertinoIcons.mail_solid,
        color: CupertinoColors.lightBackgroundGray,
        size: 28,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      clearButtonMode: OverlayVisibilityMode.editing,
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: const BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(width: 0, color: CupertinoColors.inactiveGray))),
      placeholder: "Email",
      onChanged: (newEmail) {
        setState(() {
          email = newEmail;
        });
      },
    );
  }

  Widget _buildLocationField() {
    return CupertinoTextField(
      prefix: const Icon(
        CupertinoIcons.location_solid,
        color: CupertinoColors.lightBackgroundGray,
        size: 28,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      clearButtonMode: OverlayVisibilityMode.editing,
      textCapitalization: TextCapitalization.words,
      autocorrect: false,
      decoration: const BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(width: 0, color: CupertinoColors.inactiveGray))),
      placeholder: "Location",
      onChanged: (newLocation) {
        setState(() {
          location = newLocation;
        });
      },
    );
  }

  Widget _buildDateAndTimePicker(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  CupertinoIcons.clock,
                  color: CupertinoColors.lightBackgroundGray,
                  size: 28,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Delivery Time',
                  style: Styles.deliveryTimeLabel,
                )
              ],
            ),
            Text(
              DateFormat.yMMMd().add_jm().format(dateTime),
              style: Styles.deliveryTime,
            )
          ],
        ),
        Container(
          height: 216,
          child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.dateAndTime,
              initialDateTime: dateTime,
              onDateTimeChanged: (newDateTime) {
                setState(() {
                  dateTime = newDateTime;
                });
              }),
        )
      ],
    );
  }

  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate((context, index) {
      final productIndex = index - 4;
      switch (index) {
        case 0:
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _buildNameField(),
          );
        case 1:
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _buildEmailField(),
          );
        case 2:
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _buildLocationField(),
          );
        case 3:
          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            child: _buildDateAndTimePicker(context),
          );
        default:
          if (model.productsInCart.length > productIndex) {
            return ShoppingCartItem(
              index: index,
              product: model.getProductById(
                  model.productsInCart.keys.toList()[productIndex]),
              quantity: model.productsInCart.values.toList()[productIndex],
              lastItem: productIndex == model.productsInCart.length - 1,
              formatter: _currencyFormat,
            );
          } else if (model.productsInCart.keys.length == productIndex &&
              model.productsInCart.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Shipping'
                        '${_currencyFormat.format(model.shippingCost)}',
                        style: Styles.productRowItemPrice,
                      ),
                      SizedBox(height: 6,),
                      Text(
                        'Tax ${_currencyFormat.format(model.tax)}',
                        style: Styles.productRowItemPrice,
                      ),
                      SizedBox(height: 6,),
                      Text(
                        'Total ${_currencyFormat.format(model.totalCost)}',
                        style: Styles.productRowTotal,
                      )
                    ],
                  )
                ],
              ),
            );
          }
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return CustomScrollView(
          slivers: <Widget>[
            const CupertinoSliverNavigationBar(
              largeTitle: Text("Shopping Cart"),
            ),
            SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(top: 4),
              sliver: SliverList(
                delegate: _buildSliverChildBuilderDelegate(model),
              ),
            ),
          ],
        );
      },
    );
  }
}
