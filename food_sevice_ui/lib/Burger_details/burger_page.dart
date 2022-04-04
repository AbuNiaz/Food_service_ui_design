import 'package:flutter/material.dart';

class BurgerPage extends StatelessWidget {
  final String img;
  final String title;
  final String price;

  const BurgerPage(
      {Key? key, required this.img, required this.title, required this.price})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
    );
  }
}
