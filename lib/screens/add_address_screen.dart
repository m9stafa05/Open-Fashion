import 'package:flutter/material.dart';
import 'package:open_fashion/widgets/add_address_screen_body.dart';
import 'package:open_fashion/widgets/custom_app_bar.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});
  static const String id = '/addAddressScreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(isBlack: false),
      body: AddAddressScreenBody(),
    );
  }
}
