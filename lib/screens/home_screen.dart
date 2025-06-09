import 'package:flutter/material.dart';
import 'package:open_fashion/constans.dart';
import 'package:open_fashion/widgets/custom_app_bar.dart';
import 'package:open_fashion/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String id = '/homeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(isBlack: true),
      body: HomeScreenBody(),
    );
  }
}
