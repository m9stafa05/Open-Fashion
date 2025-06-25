import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class EmojiRate extends StatefulWidget {
  EmojiRate({super.key, required this.isSelecting});
  bool isSelecting;
  @override
  State<EmojiRate> createState() => _EmojiRateState();
}

class _EmojiRateState extends State<EmojiRate> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 0;
              widget.isSelecting = true;
            });
          },
          child: SvgPicture.asset(
            'assets/svgs/InLove.svg',
            color: selectedIndex == 0 ? Colors.green : Colors.grey,
          ),
        ),
        const Gap(15),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 1;
              widget.isSelecting = true;
            });
          },
          child: SvgPicture.asset(
            'assets/svgs/Happy.svg',
            color: selectedIndex == 1 ? Colors.yellow : Colors.grey,
          ),
        ),
        const Gap(15),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 2;
              widget.isSelecting = true;
            });
          },
          child: SvgPicture.asset(
            'assets/svgs/Disappointed.svg',
            color: selectedIndex == 2 ? Colors.red : Colors.grey,
          ),
        ),
      ],
    );
  }
}
