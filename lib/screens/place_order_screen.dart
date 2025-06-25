import 'package:flutter/material.dart';
import 'package:open_fashion/widgets/custom_app_bar.dart';
import 'package:open_fashion/widgets/place_order_screen_body.dart';

class PlaceOrderScreen extends StatelessWidget {
  const PlaceOrderScreen({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.quantity,
    required this.total,
    required this.price,
  });
  static const String id = '/placeHolderScreen';

  final String image;
  final String title;
  final String description;
  final double price;
  final int quantity;
  final double total;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(isBlack: false),
      body: PlaceOrderScreenBody(
        image: image,
        title: title,
        description: description,
        price: price,
        quantity: quantity,
        total: total,
      ),
    );
  }
}
