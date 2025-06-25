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
          const CustomText(
            text: 'support@openui.design',
            color: Colors.white,
          ),
          const Gap(8),
          const CustomText(text: '+60 825 876', color: Colors.white),
          const Gap(8),
          const CustomText(
            text: '08:00 - 22:00 - Everyday',
            color: Colors.white,
          ),
          const Gap(15),
          SvgPicture.asset('assets/svgs/line.svg', width: 200),
          const Gap(20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'About          Contact          Blog',
                color: Colors.white,
              ),
            ],
          ),
          const Gap(20),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: CustomText(
                  size: 12,
                  height: 1.8,
                  max: 2,
                  text: 'Copyright© OpenUI All Rights Reserved.',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
