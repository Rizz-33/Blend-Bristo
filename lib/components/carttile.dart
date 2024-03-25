import 'package:blend_bristo/components/quantityselector.dart';
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
          Row(
            children: [
              //food image
              Image.asset(
                cartItem.food.imagePath,
                height: 80,
              ),

              SizedBox(width: 10,),

              //name and price
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //food name
                  Text(cartItem.food.name),

                  //food price
                  Text(cartItem.food.price.toString()+" LKR"),

                ],
              ),

              //increment or decrement quantity
              MyQuantitySelector(
                quantity: cartItem.quantity,
                food: cartItem.food,
                onIncrement: (){
                  restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                },
                onDecrement: (){
                  restaurant.removeFromCart(cartItem);
                },
              ),
            ],
          ),
          //addons

        ],
      ),
    ));
  }
}