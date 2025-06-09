import 'package:flutter/material.dart';
import 'package:open_fashion/widgets/custom_app_bar.dart';
import 'package:open_fashion/widgets/place_holder_body.dart';

class PlaceHolderScreen extends StatelessWidget {
  const PlaceHolderScreen({super.key});
  static const String id = '/placeHolderScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBlack: false),
      body: PlaceHolderBody(),
    );
  }
}
