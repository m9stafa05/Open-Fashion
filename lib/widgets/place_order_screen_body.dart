import 'package:flutter/material.dart';
import 'package:open_fashion/widgets/custom_text_header.dart';

class PlaceOrderScreenBody extends StatelessWidget {
  const PlaceOrderScreenBody({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.quantity,
    required this.total,
  });
  final String image;
  final String title;
  final String description;
  final double price;
  final int quantity;
  final double total;
  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomTextHeader(text: 'CheckOut')]);
  }
}
