import 'package:flutter/material.dart';

class BurgerList extends StatefulWidget {
  const BurgerList({Key? key}) : super(key: key);

  @override
  State<BurgerList> createState() => _BurgerListState();
}

class _BurgerListState extends State<BurgerList> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: ListView.builder(
          itemBuilder: (context, index) => Stack(
            children: [
              Container(
                child: Card(
                  child: Text("Burger"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
