import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grapper_app/models/fruit_model.dart';
import 'package:grapper_app/widgets/added_item.dart';

class CustomAddedItemContainer extends StatelessWidget {
  const CustomAddedItemContainer({super.key, required this.basketList});

  final List<FruitModel> basketList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xff0CA201),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  AddedItem(fruitModel: basketList[index]),
              separatorBuilder: (context, index) => SizedBox(width: 5),
              itemCount: basketList.length,
              reverse: true,
            ),
          ),
          SizedBox(width: 5),
          VerticalDivider(
            indent: 8,
            endIndent: 8,
            thickness: 1,
            width: 2,
            color: Colors.white,
          ),
          SizedBox(width: 5),
          Text(
            "View basket",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 5),
          SvgPicture.asset(
            "assets/images/icons/basket.svg",
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ],
      ),
    );
  }
}
