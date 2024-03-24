import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MyAppbar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: title,
      flexibleSpace: FlexibleSpaceBar(
        background: child,
      ),
    );
  }
}