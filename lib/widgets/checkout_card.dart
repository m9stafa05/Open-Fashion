import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/constans.dart';
import 'package:open_fashion/widgets/Quantity_count.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class CheckoutCard extends StatefulWidget {
  const CheckoutCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.onChange,
    required this.quantity,
  });
  final String image;
  final String title;
  final String description;
  final double price;
  final Function(int) onChange;
  final int quantity;
  @override
  State<CheckoutCard> createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {
  late int count = 1;

  @override
  void initState() {
    count = 1;
    count = widget.quantity;
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(widget.image), width: 130),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: widget.title,
                  size: 20,
                  spacing: 5,
                  color: kPrimaryColor,
                ),
                Gap(10),
                SizedBox(
                  width: size.width * .5,
                  child: CustomText(
                    text: widget.description,
                    color: Colors.grey,
                    size: 14,
                  ),
                ),
                const Gap(40),
                Row(
                  children: [
                    Quantity(
                      onTap: () {
                        setState(() {
                          if (count > 1) {
                            count--;
                            widget.onChange(count);
                          }
                        });
                      },
                      svg: 'assets/svgs/mins.svg',
                    ),
                    const Gap(10),
                    CustomText(
                      text: count.toString(),
                      color: Colors.black,
                      weight: FontWeight.bold,
                      spacing: 2,
                    ),
                    const Gap(10),
                    Quantity(
                      onTap: () {
                        setState(() {
                          count++;
                          widget.onChange(count);
                        });
                      },
                      svg: 'assets/svgs/plus.svg',
                    ),
                  ],
                ),
                const Gap(30),
                CustomText(
                  text: '\$${widget.price.toString()}',
                  color: Color(0xffDD8560),
                  size: 18,
                  weight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
