import 'package:blend_bristo/models/cartitem.dart';
import 'package:blend_bristo/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) => Container(
      child: Column(
        children: [

        ],
      ),
    ));
  }
}