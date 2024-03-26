import 'package:blend_bristo/components/carttile.dart';
import 'package:blend_bristo/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant> (builder: (context, restaurant, child) {
      //cart
      final userCart = restaurant.cart;

      //screen
      return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.primary,
          centerTitle: true,
          actions: [
            //clear cart button
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Are you sure you want to clear the cart?"),
                  )
                );
              },
              icon: Icon(Icons.delete),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: userCart.length,
                itemBuilder: (context, index) {
                  //get individual cart item
                  final cartItem = userCart[index];
                  
                  //return cart title
                  return MyCartTile(cartItem: cartItem);
                }
              ),
            ),
          ],
        ),
      );
    });
  }
}
