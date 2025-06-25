import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class SelectedCard extends StatelessWidget {
  final VoidCallback onCardSelect;
  final Map<String, dynamic> cardData;

  const SelectedCard({
    super.key,
    required this.onCardSelect,
    required this.cardData,
  });

  @override
  Widget build(BuildContext context) {
    final String maskedCardNumber = cardData['cardNumber'] ?? '';
    final String lastFourDigits = maskedCardNumber.length >= 4
        ? maskedCardNumber.substring(
            maskedCardNumber.length - 4,
            maskedCardNumber.length,
          )
        : '';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const Divider(),
          GestureDetector(
            onTap: onCardSelect,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  const Gap(20),
                  SvgPicture.asset('assets/svgs/MasterCard.svg'),
                  const Gap(20),
                  CustomText(
                    text: 'Master Card ending **** $lastFourDigits',
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
