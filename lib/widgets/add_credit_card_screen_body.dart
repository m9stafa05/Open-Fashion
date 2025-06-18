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
  late String cardNumber;
  late String expiryDate;
  late String cardHolderName;
  late String cvvCode;
  bool showBackView = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late TextEditingController _cardNumberController;
  late TextEditingController _expiryDateController;
  late TextEditingController _cardHolderNameController;
  late TextEditingController _cvvCodeController;

  @override
  void initState() {
    super.initState();
    cardNumber = widget.savedCard?['cardNumber'] ?? '';
    expiryDate = widget.savedCard?['expiryDate'] ?? '';
    cardHolderName = widget.savedCard?['cardHolderName'] ?? '';
    cvvCode = widget.savedCard?['cvvCode'] ?? '';

    _cardNumberController = TextEditingController(text: cardNumber);
    _expiryDateController = TextEditingController(text: expiryDate);
    _cardHolderNameController = TextEditingController(
      text: cardHolderName,
    );
    _cvvCodeController = TextEditingController(text: cvvCode);
  }

  @override
  void dispose() {
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cardHolderNameController.dispose();
    _cvvCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextHeader(text: 'Payment method'),
        GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Credit Card information
                CreditCardWidget(
                  cardNumber:
                      widget.savedCard?['cardNumber'] ?? cardNumber,
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
                  onCreditCardModelChange: onCreditCardModelChange,
                  isCardHolderNameUpperCase: true,
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
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
