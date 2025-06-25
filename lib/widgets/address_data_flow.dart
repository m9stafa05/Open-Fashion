import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/custom_text.dart';

class AddressDataFlow extends StatelessWidget {
  const AddressDataFlow({super.key, required this.savedAddress});

  final dynamic savedAddress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text:
                    '${savedAddress['first_name']} ${savedAddress['last_name']}',
                color: Colors.black,
              ),
              const Gap(8),
              CustomText(
                text:
                    '${savedAddress['address']} ${savedAddress['city']}',
                color: Colors.grey,
                size: 14,
              ),
              const Gap(5),
              CustomText(
                text:
                    '${savedAddress['state']} ${savedAddress['zip_code']}',
                color: Colors.grey,
                size: 14,
              ),
              const Gap(5),
              CustomText(
                text: '${savedAddress['phone']}',
                color: Colors.grey,
                size: 14,
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
