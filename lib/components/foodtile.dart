import 'package:blend_bristo/models/food.dart';
import 'package:flutter/material.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const MyFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(food.name),
                    Text(food.price.toString()),
                    Text(food.description),
                  ],
                )
              ),
              Image(
                image: AssetImage(food.imagePath),
                height: 150,
              ),
            ],
          ),
        )
      ],
    );
  }
}