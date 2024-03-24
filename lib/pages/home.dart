import 'package:blend_bristo/components/current_location.dart';
import 'package:blend_bristo/components/drawer.dart';
import 'package:blend_bristo/components/silverappbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
        [
          MySilverAppbar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                MyCurrentLocation()
              ],
            ),
            title: Text('title'),
          ),
        ],
        body: Container(color: Theme.of(context).colorScheme.tertiary,)
      ),
    );
  }
}