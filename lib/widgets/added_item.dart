import 'package:flutter/material.dart';
import 'package:grapper_app/models/fruit_model.dart';

class AddedItem extends StatelessWidget {
  const AddedItem({super.key, required this.fruitModel});
  final FruitModel fruitModel ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 40,
        height: 40,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Image.asset(fruitModel.image),
      ),
    );
  }
}
