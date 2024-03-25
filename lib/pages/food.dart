import 'package:blend_bristo/models/food.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  final Food food;

  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
      ],
    );
  }
}