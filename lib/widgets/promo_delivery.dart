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
        Gap(10),
        Divider(),
        Gap(10),
        Row(
          children: [
            Gap(20),
            SvgPicture.asset('assets/svgs/promo.svg', width: 25),
            Gap(20),
            CustomText(text: 'Add promo code'),
          ],
        ),
        Gap(10),
        Divider(),
        Gap(10),
        Row(
          children: [
            Gap(20),
            SvgPicture.asset('assets/svgs/Delivery.svg', width: 25),
            Gap(20),
            CustomText(text: 'Delivery'),
            Spacer(),
            CustomText(text: 'Free'),
          ],
        ),
        Gap(10),
        Divider(),
      ],
    );
  }
}
