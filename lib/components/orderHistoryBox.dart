// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class OrderHistoryBox extends StatelessWidget {
  const OrderHistoryBox({
    super.key,
    required this.orderData,
    required this.isComplete,
  });

  final Map orderData;
  final bool isComplete;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: isComplete == true
            ? Colors.greenAccent.withOpacity(0.2)
            : Colors.orangeAccent.withOpacity(0.2),
        border: Border.all(
          color: Colors.black.withOpacity(0.2),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 2.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Hero(
                tag: orderData["image"],
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(200.0),
                    ),
                  ),
                  child: Image.network(
                    orderData["image"],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orderData["name"] +
                        " (" +
                        (Random().nextInt(9) + 1).toString() +
                        "x)",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    orderData["price"] + " ETB",
                    style: TextStyle(
                      fontSize: 14.0,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                orderData["date"].toString().substring(11, 16),
              ),
              SizedBox(height: 4.0),
              Text(
                orderData["date"].toString().substring(0, 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
