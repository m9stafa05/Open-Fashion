import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/widgets/custom_text_field.dart';

class AddAddressForm extends StatefulWidget {
  final Map<String, dynamic>? savedAddress;
  const AddAddressForm({super.key, this.savedAddress});

  @override
  State<AddAddressForm> createState() => AddAddressFormState();
}

class AddAddressFormState extends State<AddAddressForm> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final phoneController = TextEditingController();

  bool validate() {
    return _formKey.currentState?.validate() ?? false;
  }

  Map<String, String> getFormData() {
    return {
      'first_name': firstNameController.text,
      'last_name': lastNameController.text,
      'address': addressController.text,
      'city': cityController.text,
      'state': stateController.text,
      'zip_code': zipCodeController.text,
      'phone': phoneController.text,
    };
  }

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
  void initState() {
    super.initState();
    if (widget.savedAddress != null) {
      firstNameController.text =
          widget.savedAddress!['first_name'] ?? '';
      lastNameController.text =
          widget.savedAddress!['last_name'] ?? '';
      addressController.text = widget.savedAddress!['address'] ?? '';
      cityController.text = widget.savedAddress!['city'] ?? '';
      stateController.text = widget.savedAddress!['state'] ?? '';
      zipCodeController.text = widget.savedAddress!['zip_code'] ?? '';
      phoneController.text = widget.savedAddress!['phone'] ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    label: 'First name',
                    keyboardType: TextInputType.name,
                    controller: firstNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter first name';
                      }
                      return null;
                    },
                  ),
                ),
                const Gap(16),
                Expanded(
                  child: CustomTextField(
                    label: 'Last name',
                    keyboardType: TextInputType.name,
                    controller: lastNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter last name';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const Gap(16),
            CustomTextField(
              label: 'Address',
              controller: addressController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter address';
                }
                return null;
              },
            ),
            const Gap(16),
            CustomTextField(
              label: 'City',
              controller: cityController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter city';
                }
                return null;
              },
            ),
            const Gap(16),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    label: 'State',
                    controller: stateController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter state';
                      }
                      return null;
                    },
                  ),
                ),
                const Gap(16),
                Expanded(
                  child: CustomTextField(
                    label: 'ZIP code',
                    keyboardType: TextInputType.number,
                    controller: zipCodeController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter ZIP code';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const Gap(16),
            CustomTextField(
              label: 'Phone number',
              keyboardType: TextInputType.phone,
              controller: phoneController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter phone number';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
