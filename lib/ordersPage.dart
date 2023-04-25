// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'dart:math';

import 'package:dd/components/orderHistoryBox.dart';
import 'package:flutter/material.dart';

import 'components/sectionTitles.dart';
import 'foodDetailsPage.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  List pendingOrders = [
    {
      "name": "Pizza",
      "price": "120",
      "ingredients": "pepperoni, cheese, tomato",
      "date": DateTime.now(),
      "image":
          "https://www.cicis.com/content/images/cicis/Jalapeno%20pizza.png",
    },
    {
      "name": "Salad",
      "price": "120",
      "ingredients": "pepperoni, cheese, tomato",
      "date": DateTime.now(),
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZRKoYAOqgOO_tqoGGnfUlGbjZxuUGX2RUIA&usqp=CAU",
    },
    {
      "name": "Burger",
      "price": "120",
      "date": DateTime.now(),
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://www.shutterstock.com/image-photo/fresh-tasty-burger-isolated-on-600w-705104968.jpg",
    },
  ];
  List completedOrders = [
    {
      "name": "Sushi",
      "price": "120",
      "date": DateTime.now(),
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8W7WfuCkSNQzfMEnHXaSu7BrrrwZVBMHsPA&usqp=CAU",
    },
    {
      "name": "Octopus",
      "price": "120",
      "date": DateTime.now(),
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3cbQ5854U4NfUMSMCX0frAcffZDRexmPWNg&usqp=CAU",
    },
    {
      "name": "Noodles",
      "price": "120",
      "date": DateTime.now(),
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnnWIYSMSKPYsGfC_x1SQVtazvEu8hb13FDg&usqp=CAU",
    },
    {
      "name": "Beyaynet",
      "price": "120",
      "date": DateTime.now(),
      "ingredients": "pepperoni, cheese, tomato",
      "image":
          "https://i0.wp.com/bestofvegan.com/wp-content/uploads/2020/10/Culture-Tuesday-Ethiopian-Cuisine-@ethiopianfoodie.jpg?resize=696%2C590&ssl=1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Pending Orders
          SectionTitles(title: "Pending Orders"),
          for (var eachOrder in pendingOrders)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetailPage(
                      foodData: eachOrder,
                    ),
                  ),
                );
              },
              child: OrderHistoryBox(
                orderData: eachOrder,
                isComplete: false,
              ),
            ),
          SizedBox(height: 20.0),

          // Complete Orders
          SectionTitles(title: "Complete Orders"),
          for (var eachOrder in completedOrders)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetailPage(
                      foodData: eachOrder,
                    ),
                  ),
                );
              },
              child: OrderHistoryBox(
                orderData: eachOrder,
                isComplete: true,
              ),
            ),
          SizedBox(height: 150.0),

          Text(
            "end of order history",
            style: TextStyle(
              color: Colors.grey[500]!,
            ),
          ),

          SizedBox(height: 150.0),
        ],
      ),
    );
  }
}
