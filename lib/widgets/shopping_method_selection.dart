import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/custom_text.dart';
import 'package:open_fashion/widgets/select_container.dart';

class ShoppingMethod extends StatelessWidget {
  const ShoppingMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Shipping Method'.toUpperCase(),
            color: Color(0xff888888),
            size: 14,
          ),
          const Gap(8),
          SelectContainer(
            text: 'Pickup at store',
            icon: Icons.keyboard_arrow_down_sharp,
            withDefaultSelection: true,
            defaultSelectionText: 'free',
          ),
        ],
      ),
    );
  }
}
