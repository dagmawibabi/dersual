// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FoodForYou extends StatelessWidget {
  const FoodForYou({
    super.key,
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
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
              width: 80.0,
              height: 80.0,
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
              ),
              child: Hero(
                tag: image,
                child: Container(
                  width: 80.0,
                  height: 80.0,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.grey[300]!,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.0),
                    ),
                  ),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // CircleAvatar(
            //   radius: 40.0,
            //   backgroundColor: Colors.white,
            // ),
          ),
          SizedBox(height: .0),
          Text(
            name,
          ),
        ],
      ),
    );
  }
}
