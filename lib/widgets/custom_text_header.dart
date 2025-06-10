import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/constans.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class CustomTextHeader extends StatelessWidget {
  const CustomTextHeader({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CustomText(text: text.toUpperCase(), size: 18, spacing: 6),
          Gap(10),
          SvgPicture.asset(
            'assets/svgs/line.svg',
            width: 200,
            color: kPrimaryColor,
          ),
          Gap(20),
        ],
      ),
    );
  }
}
