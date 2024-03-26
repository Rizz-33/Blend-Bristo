import 'package:blend_bristo/components/receipt.dart';
import 'package:blend_bristo/models/restaurant.dart';
import 'package:blend_bristo/services/database/firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  //get access to the database
  FirestoreService db = FirestoreService();

  @override
  void initState() {
    super.initState();

    //submit order to the firestore db
    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text('Delivery In Progress'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyReceipt(),
          ],
        ),
      ),
    );
  }

  // Custom bottom navbar
  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          // Profile image of driver
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: Theme.of(context).colorScheme.primary,),
            ),
          ),

          SizedBox(width: 10,),
          // Driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Driver Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Text(
                "Driver",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ],
          ),

          Spacer(),

          Row(
            children: [
              // Message button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message, color: Theme.of(context).colorScheme.primary,),
                ),
              ),

              SizedBox(width: 10,),

              // Call button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.call, color: Theme.of(context).colorScheme.primary,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
