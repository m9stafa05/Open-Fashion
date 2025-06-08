import 'package:flutter/material.dart';
import 'package:open_fashion/screens/home_screen.dart';

void main() {
  runApp(const OpenFashion());
}

class OpenFashion extends StatelessWidget {
  const OpenFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
