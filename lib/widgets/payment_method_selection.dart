import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/screens/add_credit_card_screen.dart';
import 'package:open_fashion/widgets/custom_text.dart';
import 'package:open_fashion/widgets/select_container.dart';

class PaymentMethodSelection extends StatelessWidget {
  const PaymentMethodSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Payment method'.toUpperCase(),
            color: Color(0xff888888),
            size: 14,
          ),
          const Gap(8),
          SelectContainer(
            onTap: () {
              Navigator.pushNamed(context, AddCreditCardScreen.id);
            },
            text: 'select payment method',
            icon: Icons.keyboard_arrow_down_sharp,
            withDefaultSelection: false,
          ),
        ],
      ),
    );
  }
}
