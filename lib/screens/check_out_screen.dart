import 'package:flutter/material.dart';

import 'package:open_fashion/widgets/check_out_screen_body.dart';
import 'package:open_fashion/widgets/custom_app_bar.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
  static const String id = '/checkOutScreen';

  final String image;
  final String title;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBlack: false),
      body: CheckOutScreenBody(
        image: image,
        title: title,
        description: description,
        price: price,
      ),
    );
  }
}
