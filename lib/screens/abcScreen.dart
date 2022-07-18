import 'package:flutter/material.dart';
import 'package:soothing/data/data.dart';
import 'package:soothing/screens/landingPage.dart';

class abcScreen extends StatefulWidget {
  double cost = 0.00;
  abcScreen({Key key, this.cost}) : super(key: key);

  @override
  _abcScreenState createState() => _abcScreenState();
}

class _abcScreenState extends State<abcScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                width: 200,
                height: 200,
                child: Image(
                  image: AssetImage("assets/tick.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("Order confirmed"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                '\$${widget.cost.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  letterSpacing: 1.2,
                  color: Colors.green[700],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.redAccent.withOpacity(1)),
                  ),
                  onPressed: () {
                    cart.clear();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => landingPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Continue shopping",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
