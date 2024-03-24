import 'package:blend_bristo/components/current_location.dart';
import 'package:blend_bristo/components/descriptionbox.dart';
import 'package:blend_bristo/components/drawer.dart';
import 'package:blend_bristo/components/silverappbar.dart';
import 'package:blend_bristo/components/tabbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
        [
          MySilverAppbar(
            title: MyTabBar(tabController: tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.tertiary,
                ),

                MyCurrentLocation(),

                MyDescrptionBox(),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text('data')
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text('data')
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text('data')
            ),
          ]
        ),
      ),
    );
  }
}