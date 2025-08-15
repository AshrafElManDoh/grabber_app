import 'package:flutter/material.dart';
import 'package:grapper_app/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffF6F6F6),
          radius: 35,
          child: Image.asset(categoryModel.image, width: 43, height: 43),
        ),
        SizedBox(height: 15),
        Text(
          categoryModel.name,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        ),
      ],
    );
  }
}
