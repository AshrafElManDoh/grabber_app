import 'package:flutter/material.dart';
import 'package:grapper_app/models/fruit_model.dart';

class FruitItemWidget extends StatelessWidget {
  const FruitItemWidget({
    super.key,
    required this.fruitModel,
    required this.toggleProduct,
    required this.isSelected,
  });
  final FruitModel fruitModel;
  final void Function(FruitModel fruit) toggleProduct;
  final bool Function(FruitModel fruit) isSelected;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF6F6F6),
            ),
            child: Stack(
              children: [
                Image.asset(fruitModel.image),
                Positioned(
                  bottom: 6,
                  right: 6,
                  child: CircleAvatar(
                    radius: 19,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        toggleProduct(fruitModel);
                      },
                      icon: isSelected(fruitModel)
                          ? Icon(Icons.remove, color: Colors.black)
                          : Icon(Icons.add, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fruitModel.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    SizedBox(width: 2),
                    Text(
                      "4.5 (500)",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  "\$ ${fruitModel.price}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
