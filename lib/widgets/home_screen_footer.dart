import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class HomeScreenFooter extends StatelessWidget {
  const HomeScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Ionicons.logo_twitter),
                color: Colors.white,
                onPressed: () {},
              ),
              const Gap(20),
              IconButton(
                icon: const Icon(Ionicons.logo_instagram),
                color: Colors.white,
                onPressed: () {},
              ),
              const Gap(20),
              IconButton(
                icon: const Icon(Ionicons.logo_youtube),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
          SvgPicture.asset('assets/svgs/line.svg', width: 200),
          const Gap(20),
          CustomText(
            text: 'support@openui.design',
            color: Colors.white,
          ),
          const Gap(8),
          CustomText(text: '+60 825 876', color: Colors.white),
          const Gap(8),
          CustomText(
            text: '08:00 - 22:00 - Everyday',
            color: Colors.white,
          ),
          const Gap(15),
          SvgPicture.asset('assets/svgs/line.svg', width: 200),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomText(text: 'About', color: Colors.white),
              const Gap(8),
              CustomText(text: 'Contact', color: Colors.white),
              const Gap(8),
              CustomText(text: 'Blog', color: Colors.white),
              const Gap(15),
            ],
          ),
          const Gap(20),
          CustomText(
            text: 'Copyright© OpenUI All Rights Reserved.',
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
