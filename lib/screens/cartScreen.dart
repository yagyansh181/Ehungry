import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soothing/data/data.dart';
import 'package:soothing/screens/abcScreen.dart';

import 'Foodscreen.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({Key key}) : super(key: key);

  @override
  _cartScreenState createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    double cost = 0.00;
    String time = "25";

    for (int i = 0; i < cart.length; i++) {
      cost += cart[i].price;
    }
    if (cart.length > 3) {
      time = "45";
    }
    if (cart.length > 6) {
      time = "> 60";
    }

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "My Cart",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'MC',
                              letterSpacing: 1.2),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${cart.length} Items",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                letterSpacing: 1.2),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Container(
                  child: Positioned(
                    top: 90,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  width: size.width,
                                  height: 130,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Foodscreen(
                                                  county: cart[index]),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image(
                                              height: 130,
                                              width: 130,
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                cart[index].image,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8, left: 8, bottom: 8),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                cart[index].name,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, bottom: 5),
                                                child: Text(
                                                  "\$${cart[index].price}",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        border: Border.all(
                                                          width: 2,
                                                          color: Colors.grey
                                                              .withOpacity(
                                                                  0.5), // change color
                                                        ),
                                                      ),
                                                      child: Icon(
                                                        Icons.remove,
                                                        size: 15,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0,
                                                              right: 8),
                                                      child: Text("1"),
                                                    ),
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        border: Border.all(
                                                          width: 2,
                                                          color: Colors.grey
                                                              .withOpacity(
                                                                  0.5), // change color
                                                        ),
                                                      ),
                                                      child: Icon(
                                                        Icons.add,
                                                        size: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 30,
                                right: 20,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      cart.removeLast();
                                    });
                                  },
                                  child: Container(
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
                                      Icons.delete_outline_rounded,
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            height: 1,
                            color: Theme.of(context).primaryColor,
                          );
                        },
                        itemCount: cart.length),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor.withOpacity(0.95),
                  ),
                  height: 140,
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Estimated delivery time",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  letterSpacing: 1.2),
                            ),
                            Text(
                              "${time} min",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  letterSpacing: 1.2),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total cost:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  letterSpacing: 1.2),
                            ),
                            Text(
                              '\$${cost.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 1.2,
                                color: Colors.green[700],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: size.width,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.redAccent.withOpacity(1)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => abcScreen(cost: cost),
                                ),
                              );
                            },
                            child: Text(
                              "Checkout",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.white,
                                  letterSpacing: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
