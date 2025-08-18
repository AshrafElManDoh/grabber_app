import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grapper_app/models/category_model.dart';
import 'package:grapper_app/models/fruit_model.dart';
import 'package:grapper_app/widgets/category_list_view.dart';
import 'package:grapper_app/widgets/custom_sliders.dart';
import 'package:grapper_app/widgets/fruits_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> items = const [
    "assets/images/banners/Slider 1.png",
    "assets/images/banners/Slider 2.png",
    "assets/images/banners/Slider 3.png",
  ];
  List<CategoryModel> categories = [
    CategoryModel(name: "Fruits", image: "assets/images/category/fruits.png"),
    CategoryModel(
      name: "Beverages",
      image: "assets/images/category/bavergas.png",
    ),
    CategoryModel(name: "Milk & Egg", image: "assets/images/category/egg.png"),
    CategoryModel(name: "Laundry", image: "assets/images/category/luandry.png"),
    CategoryModel(
      name: "Vegetables",
      image: "assets/images/category/vegatbels.png",
    ),
  ];

  List<FruitModel> fruits = [
    FruitModel.withoudRating(
      name: "Banana",
      image: "assets/images/fruits/banana.png",
      price: 3.99,
    ),
    FruitModel.withoudRating(
      name: "Orange",
      image: "assets/images/fruits/orange.png",
      price: 2.99,
    ),
    FruitModel.withoudRating(
      name: "Pepper",
      image: "assets/images/fruits/papper.png",
      price: 2.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset("assets/images/icons/motor.svg"),
            SizedBox(width: 10),
            Text(
              "61 Hopper street..",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(width: 10),
            RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.arrow_forward_ios, size: 20),
            ),
            Spacer(),
            SvgPicture.asset("assets/images/icons/basket.svg"),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          CustomSliders(items: items),
          SizedBox(height: 16),
          CategoryListView(categories: categories),
          SizedBox(height: 16),
          FruitsWidget(fruits: fruits),
        ],
      ),
    );
  }
}
