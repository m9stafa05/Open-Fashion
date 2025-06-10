import 'package:flutter/material.dart';
import 'package:open_fashion/widgets/add_address_form.dart';
import 'package:open_fashion/widgets/custom_bottom.dart';
import 'package:open_fashion/widgets/custom_text_header.dart';

class AddAddressScreenBody extends StatelessWidget {
  const AddAddressScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextHeader(text: 'Add shipping address'),
        AddAddressForm(),
        Spacer(),
        CustomBottom(
          text: 'Add now',
          onTap: () {
            Navigator.pop(context);
          },
          withIcon: false,
        ),
      ],
    );
  }
}
