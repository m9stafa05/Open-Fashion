import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/models/product_model.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.item});

  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset(item.image, fit: BoxFit.cover)),
          const Gap(8),
          CustomText(text: item.title, color: Colors.white, size: 16),
          CustomText(
            text: item.description,
            color: Colors.grey,
            size: 12,
          ),
          CustomText(
            text: '\$${item.price.toString()}',
            color: Color(0xffDD8560),
            size: 14,
            weight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
