import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:open_fashion/widgets/custom_bottom.dart';
import 'package:open_fashion/widgets/custom_text_header.dart';

class AddCreditCardScreenBody extends StatefulWidget {
  final Map<String, dynamic>? savedCard;

  const AddCreditCardScreenBody({super.key, this.savedCard});

  @override
  State<AddCreditCardScreenBody> createState() =>
      _AddCreditCardScreenBodyState();
}

class _AddCreditCardScreenBodyState
    extends State<AddCreditCardScreenBody> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool showBackView = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom + 16,
              ),
              child: Column(
                children: [
                  CustomTextHeader(text: 'Payment method'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: GestureDetector(
                      onTap: () => FocusScope.of(context).unfocus(),
                      child: Column(
                        children: [
                          // Credit Card information
                          CreditCardWidget(
                            cardNumber: cardNumber,
                            expiryDate: expiryDate,
                            cardHolderName: cardHolderName,
                            cvvCode: cvvCode,
                            showBackView: showBackView,
                            isHolderNameVisible: true,
                            onCreditCardWidgetChange: (v) {},
                            cardBgColor: Colors.black,
                          ),
                          CreditCardForm(
                            formKey: _formKey,
                            cardNumber: cardNumber,
                            expiryDate: expiryDate,
                            cardHolderName: cardHolderName,
                            cvvCode: cvvCode,
                            onCreditCardModelChange:
                                onCreditCardModelChange,
                            isCardHolderNameUpperCase: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        CustomBottom(
          text: 'Add card',
          withIcon: false,
          onTap: () {
            if (_formKey.currentState!.validate()) {
              final cardData = {
                'cardNumber': cardNumber,
                'expiryDate': expiryDate,
                'cardHolderName': cardHolderName,
                'cvvCode': cvvCode,
              };
              Navigator.pop(context, cardData);
            }
          },
        ),
      ],
    );
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      showBackView = creditCardModel.isCvvFocused;
    });
  }
}
