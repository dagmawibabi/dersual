// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'components/cafes.dart';
import 'components/foodForYou.dart';
import 'components/sectionTitles.dart';
import 'foodDetailsPage.dart';
import 'foodsListPage.dart';

class MainFeedPage extends StatefulWidget {
  const MainFeedPage({
    super.key,
    required this.foodForYou,
    required this.cafes,
  });

  final List foodForYou;
  final List cafes;

  @override
  State<MainFeedPage> createState() => _MainFeedPageState();
}

class _MainFeedPageState extends State<MainFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Food For You
          SectionTitles(title: "Food for you"),
          Container(
            width: double.infinity,
            height: 130.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var eachFoodForYou in widget.foodForYou)
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodDetailPage(
                            foodData: eachFoodForYou,
                          ),
                        ),
                      );
                    },
                    child: FoodForYou(
                      name: eachFoodForYou["name"],
                      image: eachFoodForYou["image"],
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 6.0),
          // Cafes
          SectionTitles(title: "Available Cafes"),
          Container(
            width: double.infinity,
            height: 500.0,
            // color: Colors.red,
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.symmetric(
                vertical: 2.0,
                horizontal: 6.0,
              ),
              children: [
                for (var eachCafe in widget.cafes)
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodsListPage(
                            cafeData: eachCafe,
                          ),
                        ),
                      );
                    },
                    child: Cafes(
                      cafeImage: eachCafe["image"],
                      cafeName: eachCafe["name"],
                    ),
                  ),
                SizedBox(height: 200.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
