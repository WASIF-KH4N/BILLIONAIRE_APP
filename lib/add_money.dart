import 'package:flutter/material.dart';

class AddMoney extends StatelessWidget {
  void Function() addMoneyFunction;
  AddMoney({super.key,required this.addMoneyFunction});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
        flex: 1,
        child: ElevatedButton(
          style:ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey[900],
            // minimumSize: Size(2,0)
          ), onPressed: addMoneyFunction, child: Text("Click me"),),
    );
  }
}
