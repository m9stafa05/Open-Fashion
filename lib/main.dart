import 'package:flutter/material.dart';
import 'package:open_fashion/models/product_model.dart';
import 'package:open_fashion/screens/add_address_screen.dart';
import 'package:open_fashion/screens/add_credit_card_screen.dart';
import 'package:open_fashion/screens/check_out_screen.dart';
import 'package:open_fashion/screens/home_screen.dart';
import 'package:open_fashion/screens/place_order_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
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
        PlaceOrderScreen.id: (context) {
          final args =
              ModalRoute.of(context)!.settings.arguments
                  as Map<String, dynamic>;
          return PlaceOrderScreen(
            image: args['image'],
            title: args['title'],
            description: args['description'],
            price: args['price'],
            quantity: args['quantity'],
            total: args['total'],
          );
        },
        AddAddressScreen.id: (context) => const AddAddressScreen(),
        AddCreditCardScreen.id: (context) =>
            const AddCreditCardScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
    );
  }
}
