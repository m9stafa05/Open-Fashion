import 'package:flutter/material.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class ContainerBottom extends StatelessWidget {
  const ContainerBottom({
    super.key,
    required this.text,
    this.textColor = Colors.white,
    this.bgColor = Colors.black,
    this.onTap,
  });
  final String text;
  final Color textColor;
  final Color bgColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),

          decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(color: Colors.grey),
          ),
          child: Center(
            child: CustomText(
              text: text.toUpperCase(),
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
