import 'package:flutter/material.dart';
import 'package:open_fashion/screens/add_credit_card_screen.dart';
import 'package:open_fashion/widgets/add_payment_method.dart';
import 'package:open_fashion/widgets/selected_card.dart';

class PaymentMethodSelection extends StatefulWidget {
  const PaymentMethodSelection({super.key});

  @override
  State<PaymentMethodSelection> createState() =>
      _PaymentMethodSelectionState();
}

class _PaymentMethodSelectionState
    extends State<PaymentMethodSelection> {
  dynamic savedCard;

  void openCard(context) async {
    final cardData = await Navigator.pushNamed(
      context,
      AddCreditCardScreen.id,
      arguments: savedCard, // Pass existing card data
    );

    if (cardData != null) {
      setState(() {
        savedCard = cardData;
      });
    }
  }

  void editCard(context) async {
    final cardData = await Navigator.pushNamed(
      context,
      AddCreditCardScreen.id,
      arguments: savedCard, // Pass existing card data
    );

    if (cardData != null) {
      setState(() {
        savedCard = cardData;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return savedCard != null
        ? SelectedCard(
            onCardSelect: () => editCard(context),
            cardData: savedCard,
          )
        : AddPaymentMethod(onCardSelect: () => openCard(context));
  }
}
