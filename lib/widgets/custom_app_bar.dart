import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/constans.dart';

class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.isBlack});
  final bool isBlack;

  @override
  Size get preferredSize => const Size.fromHeight(80);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        backgroundColor: isBlack ? kPrimaryColor : kSecondaryColor,
        leading: SvgPicture.asset(
          'assets/svgs/Menu.svg',
          color: isBlack ? kSecondaryColor : kPrimaryColor,
        ),
        leadingWidth: 40,
        centerTitle: true,
        title: SvgPicture.asset(
          'assets/logo/Logo.svg',
          color: isBlack ? kSecondaryColor : kPrimaryColor,
        ),
        actions: [
          SvgPicture.asset(
            'assets/svgs/Search.svg',
            color: isBlack ? kSecondaryColor : kPrimaryColor,
          ),
          Gap(20),
          SvgPicture.asset(
            'assets/svgs/shopping bag.svg',
            color: isBlack ? kSecondaryColor : kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
