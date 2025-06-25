import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class PromoDelivery extends StatelessWidget {
  const PromoDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(10),
        const Divider(),
        const Gap(10),
        Row(
          children: [
            const Gap(20),
            SvgPicture.asset('assets/svgs/promo.svg', width: 25),
            const Gap(20),
            const CustomText(text: 'Add promo code'),
          ],
        ),
        const Gap(10),
        const Divider(),
        const Gap(10),
        Row(
          children: [
            const Gap(20),
            SvgPicture.asset('assets/svgs/Delivery.svg', width: 25),
            const Gap(20),
            const CustomText(text: 'Delivery'),
            const Spacer(),
            const CustomText(text: 'Free'),
          ],
        ),
        const Gap(10),
        const Divider(),
      ],
    );
  }
}
