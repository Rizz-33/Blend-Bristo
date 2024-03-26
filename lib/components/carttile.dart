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
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(16)
        ),
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Food image, name, price, and quantity selector
            Row(
              mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    height: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0, bottom: 8, left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text("${cartItem.food.price} LKR"),
                      SizedBox(height: 10,),
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
                ),
                
              ],
            ),
            // Addons
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 8),
              child: SizedBox(
                height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: cartItem.selectedAddons.map((addon) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: FilterChip(
                      label: Row(
                        children: [
                          Text(addon.name),
                          SizedBox(width: 16),
                          Text("(${addon.price} LKR)"),
                        ],
                      ),
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      onSelected: (value) {},
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontSize: 12,
                      ),
                    ),
                  )).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
