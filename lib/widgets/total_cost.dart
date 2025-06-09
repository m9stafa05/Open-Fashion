import 'package:flutter/material.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class TotalCost extends StatelessWidget {
  const TotalCost({super.key, required this.price});

  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: 'Est. Total', height: 1.5, size: 20),
          CustomText(
            text: price.toString(),
            height: 1.5,
            size: 24,
            color: Color(0xffDD8560),
            weight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
