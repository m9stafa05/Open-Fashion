import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/screens/add_address_screen.dart';
import 'package:open_fashion/widgets/custom_text.dart';
import 'package:open_fashion/widgets/select_container.dart';

class AddressSelection extends StatelessWidget {
  const AddressSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Shipping address'.toUpperCase(),
            color: Color(0xff888888),
            size: 14,
          ),
          Gap(15),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Iris Watson',
                      color: Colors.black,
                    ),
                    const Gap(8),
                    CustomText(
                      text: '606-3727 Ullamcorper. Street',
                      color: Colors.grey,
                      size: 14,
                    ),
                    const Gap(5),
                    CustomText(
                      text: 'Roseville NH 11523',
                      color: Colors.grey,
                      size: 14,
                    ),
                    const Gap(5),
                    CustomText(
                      text: '(786) 713-8616',
                      color: Colors.grey,
                      size: 14,
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
          ),
          const Gap(30),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AddAddressScreen.id);
            },
            child: SelectContainer(
              text: 'Add shipping address',
              icon: Icons.add,
              withDefaultSelection: false,
            ),
          ),
        ],
      ),
    );
  }
}
