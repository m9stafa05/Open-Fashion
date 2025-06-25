import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/custom_text.dart';
import 'package:open_fashion/widgets/select_container.dart';

class AddPaymentMethod extends StatelessWidget {
  final VoidCallback onCardSelect;

  const AddPaymentMethod({super.key, required this.onCardSelect});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Payment method'.toUpperCase(),
            color: const Color(0xff888888),
            size: 14,
          ),
          const Gap(8),
          SelectContainer(
            onTap: onCardSelect,
            text: 'select payment method',
            icon: Icons.keyboard_arrow_down_sharp,
            withDefaultSelection: false,
          ),
        ],
      ),
    );
  }
}
