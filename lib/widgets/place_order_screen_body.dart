import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/checkout_card.dart';
import 'package:open_fashion/widgets/custom_bottom.dart';
import 'package:open_fashion/widgets/custom_text_header.dart';
import 'package:open_fashion/widgets/address_selection.dart';
import 'package:open_fashion/widgets/displayed_dialog.dart';
import 'package:open_fashion/widgets/payment_method_selection.dart';
import 'package:open_fashion/widgets/shopping_method_selection.dart';
import 'package:open_fashion/widgets/total_cost.dart';

// ignore: must_be_immutable
class PlaceOrderScreenBody extends StatefulWidget {
  PlaceOrderScreenBody({
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
  late int quantity;
  final double total;

  @override
  State<PlaceOrderScreenBody> createState() =>
      _PlaceOrderScreenBodyState();
}

class _PlaceOrderScreenBodyState extends State<PlaceOrderScreenBody> {
  dynamic savedCard;
  dynamic savedAddress;

  void onPaymentChanged(dynamic card) {
    setState(() {
      savedCard = card;
    });
  }

  void onAddressChanged(dynamic address) {
    setState(() {
      savedAddress = address;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextHeader(text: 'CheckOut'),
        const Gap(10),
        // Address Section
        AddressSelection(
          savedAddress: savedAddress,
          onAddressChanged: onAddressChanged,
        ),
        const Gap(10),
        // Shopping Method Section
        (savedCard == null || savedAddress == null)
            ? const ShoppingMethod()
            : const SizedBox.shrink(),
        const Gap(10),
        // Payment Method Section
        PaymentMethodSelection(
          savedCard: savedCard,
          onPaymentChanged: onPaymentChanged,
        ),
        const Gap(10),
        // Only show these when both savedCard and savedAddress have data
        if (savedCard != null && savedAddress != null) ...[
          CheckoutCard(
            image: widget.image,
            title: widget.title,
            description: widget.description,
            price: widget.price,
            quantity: widget.quantity,
            onChange: (v) {
              setState(() {
                widget.quantity = v;
              });
            },
          ),
        ],
        const Spacer(),
        TotalCost(price: widget.price * widget.quantity),
        const Gap(10),
        savedCard == null || savedAddress == null
            ? CustomBottom(text: 'Place Order', onTap: () {})
            : CustomBottom(
                text: 'Checkout',
                onTap: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return const DisplayedDialog();
                    },
                  );
                },
              ),
      ],
    );
  }
}
