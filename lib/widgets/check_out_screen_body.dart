import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/checkout_card.dart';
import 'package:open_fashion/widgets/custom_bottom.dart';
import 'package:open_fashion/widgets/custom_text_header.dart';
import 'package:open_fashion/widgets/promo_delivery.dart';
import 'package:open_fashion/widgets/total_cost.dart';

class CheckOutScreenBody extends StatelessWidget {
  const CheckOutScreenBody({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
  final String image;
  final String title;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomTextHeader(text: 'CheckOut'),
        ),
        CheckoutCard(
          image: image,
          title: title,
          description: description,
          price: price,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: PromoDelivery(),
        ),
        Spacer(),
        TotalCost(price: price),
        Gap(10),
        CustomBottom(text: 'Checkout', withIcon: true, onTap: () {}),
      ],
    );
  }
}
