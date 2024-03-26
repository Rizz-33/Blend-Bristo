import 'package:blend_bristo/components/button.dart';
import 'package:blend_bristo/pages/deliveryprogress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  //user wants to pay
  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      //only show dialog if form is valid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Confirm Payment"),
          content: SingleChildScrollView(
            child: ListView(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("Card Holder's Name: $cardHolderName"),
                Text("CVV: $cvvCode"),
              ],
            ),
          ),
          actions: [
            //cancel button
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),

            //yes
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DeliveryProgressPage(),)
              ),
              child: Text("Yes"),
            ),
          ],
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text('Checkout'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // credit card
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (p0) {},
              ),

              //credit card form
              CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (data) {
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                  });
                },
                formKey: formKey,
              ),

              SizedBox(height: 20),

              MyButton(
                text: "Pay Now",
                onTap: userTappedPay,
              ),

              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
