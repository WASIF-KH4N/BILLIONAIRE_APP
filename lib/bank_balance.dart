import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BankBalance extends StatelessWidget {
  double balance;
   BankBalance({super.key,required this.balance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex:20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bank Balance",style: TextStyle(fontSize: 18),),
            SizedBox(height: 5),
            Text('\$ ${NumberFormat.simpleCurrency(name: '').format(balance)}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          ],
        ));
  }
}
