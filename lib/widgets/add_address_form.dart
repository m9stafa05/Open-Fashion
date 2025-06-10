import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/custom_text_field.dart';

class AddAddressForm extends StatefulWidget {
  const AddAddressForm({super.key});

  @override
  State<AddAddressForm> createState() => _AddAddressFormState();
}

class _AddAddressFormState extends State<AddAddressForm> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    cityController.dispose();
    stateController.dispose();
    zipCodeController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    label: 'First name',
                    keyboardType: TextInputType.name,
                    controller: firstNameController,
                  ),
                ),
                const Gap(16),
                Expanded(
                  child: CustomTextField(
                    label: 'Last name',
                    keyboardType: TextInputType.name,
                    controller: lastNameController,
                  ),
                ),
              ],
            ),
            const Gap(16),
            CustomTextField(
              label: 'Address',
              controller: addressController,
            ),
            const Gap(16),
            CustomTextField(
              label: 'City',
              controller: cityController,
            ),
            const Gap(16),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    label: 'State',
                    controller: stateController,
                  ),
                ),
                const Gap(16),
                Expanded(
                  child: CustomTextField(
                    label: 'ZIP code',
                    keyboardType: TextInputType.number,
                    controller: zipCodeController,
                  ),
                ),
              ],
            ),
            const Gap(16),
            CustomTextField(
              label: 'Phone number',
              keyboardType: TextInputType.phone,
              controller: phoneController,
            ),
          ],
        ),
      ),
    );
  }
}
