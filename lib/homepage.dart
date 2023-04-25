// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:dd/components/cafes.dart';
import 'package:dd/components/foodForYou.dart';
import 'package:dd/components/sectionTitles.dart';
import 'package:dd/foodDetailsPage.dart';
import 'package:dd/foodsListPage.dart';
import 'package:dd/mainFeedPage.dart';
import 'package:dd/ordersPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  List cafes = [
    {
      "name": "A+",
      "image": "assets/images/cafes/aPlusCafe.jpg",
    },
    {
      "name": "Kibnesh",
      "image": "assets/images/cafes/kibneshCafe.jpg",
    },
    {
      "name": "KK Green",
      "image": "assets/images/cafes/kkGreenCafe.jpg",
    },
    {
      "name": "KK Yellow",
      "image": "assets/images/cafes/kkYellowCafe.jpg",
    },
    {
      "name": "Teacher's Cafe",
      "image": "assets/images/cafes/teachersCafe.jpg",
    },
    {
      "name": "Worker's Cafe",
      "image": "assets/images/cafes/workersCafe.jpg",
    },
  ];

  Map userProfile = {
    "name": "Dagmawi",
    "profilePic":
        "https://dagmawibabi.com/static/media/me.b4b941897136a2959e33.png",
  };

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      backgroundColor: Colors.grey[200]!,
      // appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(height: 20.0),
          // Profile and Notifications
          Padding(
            padding: EdgeInsets.only(left: 12.0, bottom: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Profile and Greeting
                Row(
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      padding: EdgeInsets.all(4.0),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300]!,
                            blurRadius: 4.0,
                            spreadRadius: 4.0,
                          ),
                        ],
                      ),
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.grey[300]!,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100.0),
                          ),
                        ),
                        child: Image.network(
                          userProfile["profilePic"],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Dagmawi",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Good Evening!",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // Notifications
                Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none_outlined,
                      size: 32.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.0),
          currentPage == 0
              ? MainFeedPage(foodForYou: foodForYou, cafes: cafes)
              : OrdersPage(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(size: 28.0),
        currentIndex: currentPage,
        iconSize: 24.0,
        onTap: (value) {
          currentPage = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt_long_rounded,
            ),
            label: "Orders",
          ),
        ],
      ),

      floatingActionButton: Container(
        padding: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: Colors.grey[900]!,
          borderRadius: BorderRadius.all(
            Radius.circular(100.0),
          ),
        ),
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
          size: 28.0,
        ),
      ),

      // FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(
      //     Icons.shopping_bag_outlined,
      //   ),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
