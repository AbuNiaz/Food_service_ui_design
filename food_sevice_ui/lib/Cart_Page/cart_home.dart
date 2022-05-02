import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_sevice_ui/adress_form/a_home.dart';
import 'package:food_sevice_ui/button.dart';

class CartHome extends StatelessWidget {
  const CartHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        color: null,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/b4.jpg',
                      height: 150,
                      width: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Simple Burger',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Best Burger',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black12),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '150 BDT',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                elevation: 3,
              ),
            ),
            const SizedBox(
              height: 400,
            ),
            const Button(),
          ],
        ),
      ),
    );
  }
}
