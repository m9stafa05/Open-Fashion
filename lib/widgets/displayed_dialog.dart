import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/emoji_rate.dart';
import 'package:open_fashion/screens/home_screen.dart';
import 'package:open_fashion/widgets/container_bottom.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class DisplayedDialog extends StatelessWidget {
  const DisplayedDialog({super.key});
  final bool rating = false;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.53,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.grey),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            CustomText(
              text: 'Payment success'.toUpperCase(),
              size: 18,
              spacing: 5,
            ),
            const Gap(40),
            SvgPicture.asset(
              'assets/svgs/Vector.svg',
              width: 45,
              height: 45,
              // ignore: deprecated_member_use
              color: Colors.green,
            ),
            const Gap(40),
            const CustomText(
              text: 'Your payment was success',
              size: 18,
            ),
            const Gap(15),
            const CustomText(
              text: 'Payment ID 123456789',
              size: 14,
              color: Color(0xFF555555),
            ),
            const Gap(20),
            SvgPicture.asset(
              'assets/svgs/line.svg',
              width: 180,
              // ignore: deprecated_member_use
              color: Colors.grey,
            ),
            const Gap(15),
            const CustomText(text: 'Rate your purchase', size: 18),
            Gap(15),
            EmojiRate(isSelecting: rating),
            Gap(30),
            Row(
              children: [
                ContainerBottom(
                  text: 'Submit',
                  bgColor: Colors.black,
                  textColor: Colors.white,
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                ),
                Gap(10),
                ContainerBottom(
                  text: 'Back To Home',
                  bgColor: Colors.white,
                  textColor: Colors.black,
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
