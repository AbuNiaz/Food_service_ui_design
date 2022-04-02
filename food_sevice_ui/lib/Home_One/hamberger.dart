import 'package:flutter/material.dart';
import 'package:food_sevice_ui/Home_One/bottom_nav.dart';
import 'package:food_sevice_ui/Header_File/header.dart';
import 'package:food_sevice_ui/Home_One/burger_list.dart';
import 'package:food_sevice_ui/Home_One/burger_list_two.dart';
import 'package:food_sevice_ui/categories.dart';

class Hamberger extends StatefulWidget {
  const Hamberger({Key? key}) : super(key: key);

  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            pinned: true,
            title: const Text("Deliver me"),
            leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
            ],
          ),
          Header(),
          const Categories(),
          const BurgerList(),
          const BurgerListTwo(),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: const Navber(),
    );
  }
}
