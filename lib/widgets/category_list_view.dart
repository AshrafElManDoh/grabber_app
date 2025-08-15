import 'package:flutter/material.dart';
import 'package:grapper_app/models/category_model.dart';
import 'package:grapper_app/widgets/category_widget.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, required this.categories});
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(width: 16),
        itemBuilder: (context, index) =>
            CategoryWidget(categoryModel: categories[index]),
        itemCount: categories.length,
      ),
    );
  }
}
