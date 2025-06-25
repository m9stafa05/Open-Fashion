import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class EmojiRate extends StatefulWidget {
  const EmojiRate({super.key, this.onChanged});
  final ValueChanged<int?>? onChanged;
  @override
  State<EmojiRate> createState() => _EmojiRateState();
}

class _EmojiRateState extends State<EmojiRate> {
  int? selectedIndex;

  void _select(int idx) {
    setState(() {
      selectedIndex = idx;
    });
    if (widget.onChanged != null) {
      widget.onChanged!(selectedIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => _select(0),
          child: SvgPicture.asset(
            'assets/svgs/InLove.svg',
            // ignore: deprecated_member_use
            color: selectedIndex == 0 ? Colors.green : Colors.grey,
          ),
        ),
        const Gap(15),
        GestureDetector(
          onTap: () => _select(1),
          child: SvgPicture.asset(
            'assets/svgs/Happy.svg',
            // ignore: deprecated_member_use
            color: selectedIndex == 1 ? Colors.yellow : Colors.grey,
          ),
        ),
        const Gap(15),
        GestureDetector(
          onTap: () => _select(2),
          child: SvgPicture.asset(
            'assets/svgs/Disappointed.svg',
            // ignore: deprecated_member_use
            color: selectedIndex == 2 ? Colors.red : Colors.grey,
          ),
        ),
      ],
    );
  }
}
