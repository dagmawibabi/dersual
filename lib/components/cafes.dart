// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cafes extends StatelessWidget {
  const Cafes({
    super.key,
    required this.cafeImage,
    required this.cafeName,
  });

  final String cafeName;
  final String cafeImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 4.0,
            spreadRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Hero(
            tag: cafeImage,
            child: Container(
              width: 180.0,
              height: 140.0,
              margin: EdgeInsets.only(top: 7.0),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.grey[300]!,
                borderRadius: BorderRadius.all(
                  Radius.circular(14.0),
                ),
              ),
              child: Image.asset(
                cafeImage.toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            margin: EdgeInsets.only(bottom: 4.0),
            child: Text(
              cafeName.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
