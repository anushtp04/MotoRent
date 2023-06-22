import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: RichText(
            text: TextSpan(
                text: "Moto",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: "Rent",
                      style: TextStyle(color: Colors.blue.shade900))
                ])),
        centerTitle: true,

      ),
      body: Center(
        child: Text(
            "Notification Page"
        ),
      ),
    );
  }
}
