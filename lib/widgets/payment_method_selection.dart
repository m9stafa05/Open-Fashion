import 'package:flutter/material.dart';
import 'package:open_fashion/screens/add_credit_card_screen.dart';
import 'package:open_fashion/widgets/add_payment_method.dart';
import 'package:open_fashion/widgets/payment_storage.dart';
import 'package:open_fashion/widgets/selected_card.dart';

// ignore: must_be_immutable
class PaymentMethodSelection extends StatefulWidget {
  final dynamic savedCard;
  final ValueChanged<dynamic> onPaymentChanged;

  const PaymentMethodSelection({
    super.key,
    required this.savedCard,
    required this.onPaymentChanged,
  });

  @override
  State<PaymentMethodSelection> createState() =>
      _PaymentMethodSelectionState();
}

class _PaymentMethodSelectionState
    extends State<PaymentMethodSelection> {
  late dynamic savedCard;

  @override
  void initState() {
    super.initState();
    savedCard = widget.savedCard;
    _loadSavedCard();
  }

  Future<void> _loadSavedCard() async {
    final savedData = await PaymentStorage.getPayment();
    if (savedData != null) {
      setState(() {
        savedCard = savedData;
      });
      widget.onPaymentChanged(savedData);
    }
  }

  void openCard(context) async {
    final cardData = await Navigator.pushNamed(
      context,
      AddCreditCardScreen.id,
      arguments: savedCard,
    );

    if (cardData != null) {
      await PaymentStorage.savePayment(
        cardData as Map<String, dynamic>,
      );
      setState(() {
        savedCard = cardData;
      });
      widget.onPaymentChanged(cardData);
    }
  }

  void editCard(context) async {
    final cardData = await Navigator.pushNamed(
      context,
      AddCreditCardScreen.id,
      arguments: savedCard,
    );

    if (cardData != null) {
      await PaymentStorage.savePayment(
        cardData as Map<String, dynamic>,
      );
      setState(() {
        savedCard = cardData;
      });
      widget.onPaymentChanged(cardData);
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
