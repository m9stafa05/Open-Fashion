import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/custom_bottom.dart';
import 'package:open_fashion/widgets/custom_text_header.dart';
import 'package:open_fashion/widgets/address_selection.dart';
import 'package:open_fashion/widgets/payment_method_selection.dart';
import 'package:open_fashion/widgets/shopping_method_selection.dart';
import 'package:open_fashion/widgets/total_cost.dart';

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
    return Column(
      children: [
        CustomTextHeader(text: 'CheckOut'),
        const Gap(20),
        // Address Section
        AddressSelection(),
        const Gap(50),
        // Shopping Method Section
        ShoppingMethod(),
        const Gap(50),
        // Payment Method Section
        PaymentMethodSelection(),
        Spacer(),
        TotalCost(price: total),
        Gap(20),
        CustomBottom(text: 'Place order', onTap: () {}),
      ],
    );
  }
}
