import 'package:blend_bristo/components/button.dart';
import 'package:blend_bristo/components/carttile.dart';
import 'package:blend_bristo/models/restaurant.dart';
import 'package:blend_bristo/pages/payment.dart';
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
                    title: Text(
                      "Are you sure you want to clear the cart?",
                      style: TextStyle(fontSize: 20),
                    ),
                    actions: [
                      //cancel
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Cancel'),
                      ),

                      //yes
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          restaurant.clearCart();
                        },
                        child: Text('Yes'),
                      ),
                    ],
                  )
                );
              },
              icon: Icon(Icons.delete),
            ),
          ],
        ),
        body: Column(
          children: [



            //cart item list
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty ? Expanded(
                    child: Center(
                      child: Text(
                        "Cart is empty.",
                        style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                    ),
                  )
                    : Expanded(
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
            ),

            //button to pay
            MyButton(
              text: "Go To Checkout",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentPage()),
              ),
            ),
            SizedBox(height: 25,)
          ],
        ),
      );
    });
  }
}
