import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/screens/place_order_screen.dart';
import 'package:open_fashion/widgets/checkout_card.dart';
import 'package:open_fashion/widgets/custom_bottom.dart';
import 'package:open_fashion/widgets/custom_text_header.dart';
import 'package:open_fashion/widgets/promo_delivery.dart';
import 'package:open_fashion/widgets/total_cost.dart';

class CheckOutScreenBody extends StatefulWidget {
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
  State<CheckOutScreenBody> createState() =>
      _CheckOutScreenBodyState();
}

class _CheckOutScreenBodyState extends State<CheckOutScreenBody> {
  int selectedQuantity = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomTextHeader(text: 'CheckOut'),
        ),
        CheckoutCard(
          image: widget.image,
          title: widget.title,
          description: widget.description,
          price: widget.price,
          onChange: (v) {
            setState(() {
              selectedQuantity = v;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: PromoDelivery(),
        ),
        Spacer(),
        TotalCost(price: widget.price * selectedQuantity),
        Gap(10),
        CustomBottom(
          text: 'Checkout',
          withIcon: true,
          onTap: () {
            final total = widget.price * selectedQuantity;
            Navigator.pushNamed(
              context,
              PlaceOrderScreen.id,
              arguments: {
                'image': widget.image,
                'title': widget.title,
                'description': widget.description,
                'price': widget.price,
                'quantity': selectedQuantity,
                'total': total,
              },
            );
          },
        ),
      ],
    );
  }
}
