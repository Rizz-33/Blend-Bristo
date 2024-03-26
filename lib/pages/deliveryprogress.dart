import 'package:flutter/material.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

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
    );
  }
}