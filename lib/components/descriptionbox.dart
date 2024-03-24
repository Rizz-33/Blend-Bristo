import 'package:flutter/material.dart';

class MyDescrptionBox extends StatelessWidget {
  const MyDescrptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.tertiary)
      ),
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('\$6.99'),
              Text('Delivery Fee'),
            ],
          ),
          Column(
            children: [
              Text('15-20 min'),
              Text('Delivery Time'),
            ],
          ),
        ],
      ),
    );
  }
}