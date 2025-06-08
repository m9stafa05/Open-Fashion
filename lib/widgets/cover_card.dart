import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/models/cover_model.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class CoverCard extends StatelessWidget {
  const CoverCard({super.key, required this.item});

  final CoverModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset(item.image, fit: BoxFit.cover)),
          const Gap(10),
          CustomText(
            text: item.title.toUpperCase(),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
