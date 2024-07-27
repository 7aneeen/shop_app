import 'package:flutter/material.dart';
import 'package:shop_app/features/homescreen/data/models/homescreen_items.dart';
import 'package:shop_app/features/homescreen/presentation/views/widgets/home_widget/home_screen_body.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        ...catecories.map((e) {
          return HomeScreenBody(name: e.name, image: e.image);
        }).toList(),
      ],
    );
  }
}
