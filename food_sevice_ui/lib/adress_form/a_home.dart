import 'package:flutter/material.dart';

class AdressHome extends StatelessWidget {
  const AdressHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Address'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('ABU NIAZ'),
                        Text('017xxxxxxx21'),
                        Text('Dattapara, Asulia'),
                        Text('Savar Dhaka'),
                      ],
                    ),
                    const Icon(Icons.navigate_next)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
