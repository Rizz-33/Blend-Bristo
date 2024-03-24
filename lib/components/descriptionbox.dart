import 'package:flutter/material.dart';

class MyDescrptionBox extends StatelessWidget {
  const MyDescrptionBox({super.key});

  @override
  Widget build(BuildContext context) {

    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.tertiary
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.tertiary),
        borderRadius: BorderRadius.circular(16)
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('\$6.99', style: myPrimaryTextStyle,),
              Text('Delivery Fee', style: mySecondaryTextStyle,),
            ],
          ),
          Column(
            children: [
              Text('15-20 min', style: myPrimaryTextStyle,),
              Text('Delivery Time', style: mySecondaryTextStyle,),
            ],
          ),
        ],
      ),
    );
  }
}