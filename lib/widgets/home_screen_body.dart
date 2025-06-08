import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/models/product_model.dart';
import 'package:open_fashion/widgets/product_card.dart';

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
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 40,
                    ),
                itemCount: ProductModel.productsList.length,
                itemBuilder: (context, index) {
                  final item = ProductModel.productsList[index];
                  return ProductCard(item: item);
                },
              ),

              const Gap(20),

            ],
          ),
        ),
      ],
    );
  }
}
