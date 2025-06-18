import 'package:flutter/material.dart';
import 'package:open_fashion/widgets/add_credit_card_screen_body.dart';
import 'package:open_fashion/widgets/custom_app_bar.dart';

class AddCreditCardScreen extends StatelessWidget {
  const AddCreditCardScreen({super.key});
  static const String id = '/add_credit_card_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBlack: false),
      body: AddCreditCardScreenBody(),
    );
  }
}
