import 'package:flutter/material.dart';

class BurgerList extends StatefulWidget {
  const BurgerList({Key? key}) : super(key: key);

  @override
  State<BurgerList> createState() => _BurgerListState();
}

class _BurgerListState extends State<BurgerList> {
  @override
  Widget build(BuildContext context) {
    int item = 10;
    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: const EdgeInsets.only(top: 15),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item,
          itemBuilder: (context, index) => Stack(
            children: [
              Container(
                height: 240,
                width: 200,
                margin:
                    EdgeInsets.only(left: 15, right: index == item ? 15 : 0),
                child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: const [
                          Text(
                            "Burger",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
