import 'package:flutter/material.dart';
import 'package:tourist_guide/app_data.dart';
import 'package:tourist_guide/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('دليل سياحي'),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7/8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: categories_data.map((e) => CategoryItem(title: e.title, imageUrl: e.imageUrl)).toList(),
      ),
    );
  }
}
