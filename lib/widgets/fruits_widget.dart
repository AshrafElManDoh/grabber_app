import 'package:flutter/material.dart';
import 'package:grapper_app/models/fruit_model.dart';
import 'package:grapper_app/widgets/fruit_list_view.dart';

class FruitsWidget extends StatelessWidget {
  const FruitsWidget({
    super.key,
    required this.fruits,
    required this.toggleProduct,
    required this.isSelected,
  });
  final List<FruitModel> fruits;
  final void Function(FruitModel fruit) toggleProduct;
  final bool Function(FruitModel fruit) isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FruitsHeader(),
        ),
        SizedBox(height: 16),
        FruitListView(
          fruits: fruits,
          toggleProduct: toggleProduct,
          isSelected: isSelected,
        ),
      ],
    );
  }
}

class FruitsHeader extends StatelessWidget {
  const FruitsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Fruits",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Spacer(),
        Text(
          "See all",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff0CA201),
          ),
        ),
      ],
    );
  }
}
