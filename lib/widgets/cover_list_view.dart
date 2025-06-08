import 'package:flutter/material.dart';
import 'package:open_fashion/models/cover_model.dart';
import 'package:open_fashion/widgets/cover_card.dart';

class CoverListView extends StatelessWidget {
  const CoverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CoverModel.coverList.length,
        itemBuilder: (context, index) {
          final item = CoverModel.coverList[index];
          return CoverCard(item: item);
        },
      ),
    );
  }
}
