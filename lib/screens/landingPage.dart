import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soothing/Clist/Categories.dart';
import 'package:soothing/data/data.dart';

import 'cartScreen.dart';

class landingPage extends StatefulWidget {
  const landingPage({Key key}) : super(key: key);

  @override
  _landingPageState createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).primaryColor,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: IconButton(
                        icon: Icon(
                          Icons.account_circle_rounded,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Ehungry',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 50,
                        fontFamily: 'MC',
                        letterSpacing: 5),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => cartScreen(),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_sharp,
                                color: Colors.black,
                              ),
                              Text(
                                '(${cart.length})',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  width: size.width,
                  height: 70,
                  child: search(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      letterSpacing: 5),
                ),
              ),
              Categories(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              label: "Cart"),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => cartScreen(),
              ),
            );
          }
        },
      ),
    );
  }

  TextField search() {
    return TextField(
      cursorColor: Colors.redAccent,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xfffb0a1c),
          ),
        ),
        prefixIcon: Icon(Icons.search),
        hintText: "search Food or Restaurants",
        suffixIcon: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {},
        ),
      ),
    );
  }
}
