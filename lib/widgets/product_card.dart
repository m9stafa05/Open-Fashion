import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/models/product_model.dart';
import 'package:open_fashion/screens/check_out_screen.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.item});

  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          CheckOutScreen.id,
          arguments: item,
        );
      },
      child: SizedBox(
        height: 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(item.image, fit: BoxFit.cover),
            ),
            const Gap(10),
            CustomText(
              text: item.title,
              color: Colors.white,
              size: 16,
            ),
            const Gap(6),
            CustomText(
              text: item.description,
              color: Colors.grey,
              height: 1.2,
              size: 12,
            ),
            const Gap(15),
            CustomText(
              text: '\$${item.price.toString()}',
              color: const Color(0xffDD8560),
              size: 14,
              weight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
