// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:dd/components/eachFoodList.dart';
import 'package:dd/components/sectionTitles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'foodDetailsPage.dart';

class FoodsListPage extends StatefulWidget {
  const FoodsListPage({
    super.key,
    required this.cafeData,
  });

  final Map cafeData;

  @override
  State<FoodsListPage> createState() => _FoodsListPageState();
}

class _FoodsListPageState extends State<FoodsListPage> {
  List foodForYou = [
    {
      "name": "Pizza",
      "price": "120",
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://www.cicis.com/content/images/cicis/Jalapeno%20pizza.png",
    },
    {
      "name": "Salad",
      "price": "120",
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZRKoYAOqgOO_tqoGGnfUlGbjZxuUGX2RUIA&usqp=CAU",
    },
    {
      "name": "Burger",
      "price": "120",
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://www.shutterstock.com/image-photo/fresh-tasty-burger-isolated-on-600w-705104968.jpg",
    },
    {
      "name": "Sushi",
      "price": "120",
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8W7WfuCkSNQzfMEnHXaSu7BrrrwZVBMHsPA&usqp=CAU",
    },
    {
      "name": "Octopus",
      "price": "120",
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3cbQ5854U4NfUMSMCX0frAcffZDRexmPWNg&usqp=CAU",
    },
    {
      "name": "Noodles",
      "price": "120",
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnnWIYSMSKPYsGfC_x1SQVtazvEu8hb13FDg&usqp=CAU",
    },
    {
      "name": "Beyaynet",
      "price": "120",
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://i0.wp.com/bestofvegan.com/wp-content/uploads/2020/10/Culture-Tuesday-Ethiopian-Cuisine-@ethiopianfoodie.jpg?resize=696%2C590&ssl=1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200]!,
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.cafeData["image"],
                child: Container(
                  child: Image.asset(
                    widget.cafeData["image"],
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.5),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        widget.cafeData["name"],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SectionTitles(title: "Menu"),
          for (var eachFood in foodForYou)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetailPage(
                      foodData: eachFood,
                    ),
                  ),
                );
              },
              child: EachFoodList(
                foodData: eachFood,
              ),
            ),
          SizedBox(height: 100.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "end of " + widget.cafeData["name"] + "'s menu",
                style: TextStyle(
                  color: Colors.grey[500]!,
                ),
              ),
            ],
          ),
          SizedBox(height: 100.0),
        ],
      ),
    );
  }
}
