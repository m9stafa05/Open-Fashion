import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/cover_list_view.dart';
import 'package:open_fashion/widgets/custom_text.dart';
import 'package:open_fashion/widgets/home_screen_footer.dart';
import 'package:open_fashion/widgets/product_grid_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //texts
        Positioned(
          top: 10,
          left: 0,
          right: 0,
          child: SvgPicture.asset(
            'assets/texts/10.svg',
            width: 200,
            height: 150,
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          right: 0,
          child: SvgPicture.asset('assets/texts/October.svg'),
        ),
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          child: SvgPicture.asset('assets/texts/Collection.svg'),
        ),

        //content
        SingleChildScrollView(
          child: Column(
            children: [
              const Gap(120),
              Image.asset('assets/cover/cover.png'),
              const Gap(120),
              // Product Card Section
              ProductGridView(),
              const Gap(20),
              // Recommendation Section
              CustomText(
                text: 'You may also like'.toUpperCase(),
                size: 32,
                color: Colors.white,
              ),
              SvgPicture.asset('assets/svgs/line.svg', width: 200),
              const Gap(8),
              CoverListView(),
              const Gap(10),
              //Footer Section
              HomeScreenFooter(),
            ],
          ),
        ),
      ],
    );
  }
}
