import 'package:blend_bristo/components/current_location.dart';
import 'package:blend_bristo/components/descriptionbox.dart';
import 'package:blend_bristo/components/drawer.dart';
import 'package:blend_bristo/components/foodtile.dart';
import 'package:blend_bristo/components/silverappbar.dart';
import 'package:blend_bristo/components/tabbar.dart';
import 'package:blend_bristo/models/food.dart';
import 'package:blend_bristo/models/restaurant.dart';
import 'package:blend_bristo/pages/food.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return MyFoodTile(
            food: food,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FoodPage(food: food)));
            }
          );
        }
      );
    }).toList();
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
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
          controller: tabController,
          children: getFoodInThisCategory(restaurant.menu),
        ),
        )
      ),
    );
  }
}