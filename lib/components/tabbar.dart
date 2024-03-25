import 'package:blend_bristo/models/food.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {

  final TabController tabController;

  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        unselectedLabelColor: Theme.of(context).colorScheme.tertiary,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}