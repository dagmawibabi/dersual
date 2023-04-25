// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:dd/components/sectionTitles.dart';
import 'package:flutter/material.dart';

class FoodDetailPage extends StatefulWidget {
  const FoodDetailPage({
    super.key,
    required this.foodData,
  });

  final Map foodData;

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  int itemAmount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300]!,
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: 10.0),
                // Back Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ],
                ),
                // Food Image
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 250.0,
                      width: 250.0,
                      padding: EdgeInsets.all(5.0),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(250.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400]!,
                            blurRadius: 8.0,
                            spreadRadius: 8.0,
                          ),
                        ],
                      ),
                      child: Hero(
                        tag: widget.foodData["image"],
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(250.0),
                            ),
                          ),
                          child: Image.network(
                            widget.foodData["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                // Food Name
                Text(
                  widget.foodData["name"],
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                // Food Details
                Container(
                  width: double.infinity,
                  height: 600.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Food Components
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.timer_sharp,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  "15 mins",
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.fastfood_outlined,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  "360 Kal",
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.orange,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  "4.8 (3.2k Reviews)",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[200]!,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Text(
                              widget.foodData["price"].toString() + " ETB",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[200]!,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (itemAmount > 0) {
                                      itemAmount -= 1;
                                      setState(() {});
                                    }
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 25.0),
                                Text(
                                  itemAmount.toString(),
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 25.0),
                                GestureDetector(
                                  onTap: () {
                                    itemAmount += 1;
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // About Food
                      SectionTitles(
                        title: "About Food",
                        isCentered: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(
                          "Your favorite pizzeria should have dairy-fresh cheese, garden-fresh tomatoes and no wilting veggies. You want the best pizza to be cooked to a crisp. The cheese should be melted, the crust should have some crunch to it, the toppings should be well-cooked and the whole thing should be served piping hot. One of the principal characteristics of pizza is its texture. Commercial pizzerias use qualitative terms such as chewy, tough, stretchy, etc. to describe the taste of their food.",
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      // Spacer(),
                      // Add to order
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 50.0, vertical: 14.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[900]!,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: Text(
                          "Add to order  =  " +
                              ((int.parse(widget.foodData["price"].toString()) *
                                      itemAmount)
                                  .toString()) +
                              " ETB",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 40.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
