import 'package:flutter/material.dart';

class NumberRow extends StatefulWidget {
  const NumberRow({Key? key}) : super(key: key);

 

  @override
  State<NumberRow> createState() => _NumberRowState();
}

class _NumberRowState extends State<NumberRow> {
String valueChoose ;
  List listitem=["item 1","item 2"];
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Container(
          child: DropdownButton(
            items:,
            value:valueChoose ,
            onChanged: (newValue){
              setState(() {
                valueChoose=newValue;
              });
            } ,
            ),
        )
      ],
    );
  }
}
