import 'package:flutter/material.dart';
import 'package:grapper_app/models/fruit_model.dart';
import 'package:grapper_app/widgets/fruit_item_widget.dart';

class FruitListView extends StatelessWidget {
  const FruitListView({super.key, required this.fruits});
  final List<FruitModel> fruits;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 16,right: 16),
        itemBuilder: (context, index) =>
            FruitItemWidget(fruitModel: fruits[index]),
        separatorBuilder: (context, index) => SizedBox(width: 10,),
        itemCount: fruits.length,
      ),
    );
  }
}
