import 'package:flutter/widgets.dart';
import 'package:open_fashion/widgets/custom_text_header.dart';

class AddCreditCardScreenBody extends StatelessWidget {
  const AddCreditCardScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomTextHeader(text: 'Payment method')],
    );
  }
}
