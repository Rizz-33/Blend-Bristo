import 'package:blend_bristo/models/food.dart';
import 'package:flutter/material.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const MyQuantitySelector({super.key, required this.quantity, required this.food, required this.onIncrement, required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}