import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion/constans.dart';

class Quantity extends StatelessWidget {
  const Quantity({super.key, this.onTap, required this.svg});
  final Function()? onTap;
  final String svg;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: SvgPicture.asset(svg, color: kPrimaryColor),
      ),
    );
  }
}
