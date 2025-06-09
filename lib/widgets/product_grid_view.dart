import 'package:flutter/material.dart';
import 'package:open_fashion/models/product_model.dart';
import 'package:open_fashion/widgets/product_card.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        crossAxisSpacing: 20,
        mainAxisSpacing: 30,
      ),
      itemCount: ProductModel.productsList.length,
      itemBuilder: (context, index) {
        final item = ProductModel.productsList[index];
        return ProductCard(item: item);
      },
    );
  }
}
