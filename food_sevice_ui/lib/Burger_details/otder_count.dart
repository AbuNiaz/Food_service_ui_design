import 'package:flutter/material.dart';

class OrderCount extends StatefulWidget {
  @override
  State<OrderCount> createState() => _OrderCountState();
}

class _OrderCountState extends State<OrderCount> {
  int _orderCount = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              setState(
                () {
                  if (_orderCount > 1) {
                    _orderCount--;
                  } else {}
                },
              );
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Text("$_orderCount"),
          ),
          InkWell(
            onTap: () {
              setState(
                () {
                  _orderCount++;
                },
              );
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
