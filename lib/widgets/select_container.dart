import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class SelectContainer extends StatelessWidget {
  const SelectContainer({
    super.key,
    required this.text,
    required this.icon,
    this.defaultSelectionText = '',
    required this.withDefaultSelection,
  });
  final String text;
  final String defaultSelectionText;
  final IconData icon;
  final bool withDefaultSelection;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 370,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        decoration: BoxDecoration(
          color: const Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(44),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: text, color: Color(0xff555555)),
            Spacer(),
            withDefaultSelection
                ? CustomText(
                    text: defaultSelectionText.toUpperCase(),
                    color: Color(0xff555555),
                  )
                : SizedBox.shrink(),
            const Gap(10),
            Icon(icon, size: 30),
          ],
        ),
      ),
    );
  }
}
