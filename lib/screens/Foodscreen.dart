import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soothing/data/data.dart';
import 'package:soothing/models/Types.dart';

import 'cartScreen.dart';

class Foodscreen extends StatefulWidget {
  Types county;

  Foodscreen({Key key, this.county}) : super(key: key);

  @override
  _FoodscreenState createState() => _FoodscreenState();
}

class _FoodscreenState extends State<Foodscreen> {
  @override
  Widget build(BuildContext context) {
    bool cartC = false;
    Color C;
    if (cartC) {
      C = Theme.of(context).secondaryHeaderColor;
    } else {
      C = Colors.green;
    }
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: Container(
              height: size.height / 2,
              width: size.width,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(widget.county.image),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              height: size.height / 1.8,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            widget.county.name,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
                                letterSpacing: 1.2),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              '\$${widget.county.price}',
                              style: TextStyle(
                                  color: Theme.of(context).secondaryHeaderColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,
                                  letterSpacing: 1.2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.grey
                                            .withOpacity(0.5), // change color
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.remove,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8),
                                    child: Text(
                                      widget.county.number.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 25,
                                          letterSpacing: 1.2),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.grey
                                            .withOpacity(0.5), // change color
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  size: 15,
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '${widget.county.star}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        letterSpacing: 1.2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  size: 15,
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '10 min',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        letterSpacing: 1.2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.local_fire_department_outlined,
                                  size: 15,
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '${widget.county.cal}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        letterSpacing: 1.2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Never tasteless, disgusting, or nauseating.  meals are tasty, appetizing, scrumptious, yummy, lusci, delectable, mouth-watering, fit for a king, delight, lovely, wonderful, pleasant, enjoyable, appealing, enchanting, charming. You wouldn't call delicious that what is tasteless or unpleasant.",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.redAccent.withOpacity(1)),
                                ),
                                onPressed: () {
                                  cart.add(widget.county);
                                },
                                child: Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Colors.white,
                                      letterSpacing: 1.2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 20),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white.withOpacity(0.9),
              ),
              child: Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 20,
                    color: Colors.black,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0, right: 20),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => cartScreen(),
                        ),
                      ),
                      icon: Icon(
                        Icons.shopping_cart_sharp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
