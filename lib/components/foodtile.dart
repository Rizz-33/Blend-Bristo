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
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        food.price.toString()+" LKR",
                        style: TextStyle(color: Theme.of(context).colorScheme.primary),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        food.description,
                        
                      ),
                    ],
                  )
                ),
                Image(
                  image: AssetImage(food.imagePath),
                  height: 120,
                ),
              ],
            ),
          ),
        ),
        Divider(color: Theme.of(context).colorScheme.tertiary,)
      ],
    );
  }
}