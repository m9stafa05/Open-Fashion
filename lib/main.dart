import 'package:flutter/material.dart';
import 'package:open_fashion/models/product_model.dart';
import 'package:open_fashion/screens/check_out_screen.dart';
import 'package:open_fashion/screens/home_screen.dart';
import 'package:open_fashion/screens/place_order_screen.dart';

void main() {
  runApp(const OpenFashion());
}

class OpenFashion extends StatelessWidget {
  const OpenFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        CheckOutScreen.id: (context) {
          final item =
              ModalRoute.of(context)!.settings.arguments
                  as ProductModel;
          return CheckOutScreen(
            image: item.image,
            title: item.title,
            description: item.description,
            price: item.price,
          );
        },
        PlaceOrderScreen.id: (context) => const PlaceOrderScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
    );
  }
}
