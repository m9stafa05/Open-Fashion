import 'package:flutter/material.dart';
import 'package:open_fashion/widgets/add_address_form.dart';
import 'package:open_fashion/widgets/custom_bottom.dart';
import 'package:open_fashion/widgets/custom_text_header.dart';

class AddAddressScreenBody extends StatefulWidget {
  const AddAddressScreenBody({super.key});

  @override
  State<AddAddressScreenBody> createState() =>
      _AddAddressScreenBodyState();
}

class _AddAddressScreenBodyState extends State<AddAddressScreenBody> {
  final _formKey = GlobalKey<AddAddressFormState>();

  @override
  Widget build(BuildContext context) {
    final savedAddress =
        ModalRoute.of(context)?.settings.arguments
            as Map<String, dynamic>?;
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextHeader(text: 'Add shipping address'),
                AddAddressForm(
                  key: _formKey,
                  savedAddress: savedAddress,
                ),
              ],
            ),
          ),
        ),
        CustomBottom(
          text: 'Add now',
          onTap: () {
            if (_formKey.currentState!.validate()) {
              final formData = _formKey.currentState?.getFormData();
              Navigator.pop(context, formData);
            }
          },
          withIcon: false,
        ),
      ],
    );
  }
}
