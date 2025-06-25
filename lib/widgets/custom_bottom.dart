import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/constans.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.text,
    this.withIcon = true,
    required this.onTap,
  });
  final String text;
  final bool withIcon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(24),
        width: double.infinity,
        color: kPrimaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            withIcon
                ? SvgPicture.asset(
                    'assets/svgs/shopping bag.svg',
                    // ignore: deprecated_member_use
                    color: Colors.white,
                    width: 25,
                  )
                : const SizedBox.shrink(),
            const Gap(20),
            CustomText(
              text: text.toUpperCase(),
              size: 20,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
