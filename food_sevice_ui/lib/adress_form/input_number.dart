import 'package:flutter/material.dart';

class NumberRow extends StatefulWidget {
  const NumberRow({Key? key}) : super(key: key);

  @override
  State<NumberRow> createState() => _NumberRowState();
}

class _NumberRowState extends State<NumberRow> {
  late String valueChoose;
  List listItem = ["item 1", "item 2"];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: null,
          ),
          child: DropdownButton(
            hint: const Text('Select Country Code'),
            value: valueChoose,
            onChanged: (newValue) {
              setState(() {
                valueChoose == newValue;
              });
            },
            items: listItem.map(
              (listItem) {
                return DropdownMenuItem(
                  value: listItem,
                  child: Row(
                    children: <Widget>[
                      Text(
                        listItem,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
          ),
        )
      ],
    );
  }
}
