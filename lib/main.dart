import 'package:billionaire_app/add_money.dart';
import 'package:billionaire_app/bank_balance.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double balance = 0;

  void addmoney() async{
    setState(() {
      balance=balance+1000;
    });
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('balance', balance);
    print("Balanced");

  }

  @override
  void initState() {
    loadBalance();
    super.initState();
  }
  void loadBalance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
  setState(() {
    balance= prefs.getDouble('balance') ??0;

  });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home:Scaffold(
        appBar:AppBar(
          title: Text("BILLIONAIRE APP",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.blueGrey),),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(top:15,bottom: 15),
          height: double.infinity,
          width: double.infinity,
          color: Colors.blueGrey[700],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BankBalance(balance: balance,),
               AddMoney(addMoneyFunction: addmoney,),
          ],
          ),
        ),
      )
    );
  }
}















// Row(
//   children: [
//    /* Expanded(
//       flex: 3,
//         child: Container(child:  Text("1"),color: Colors.black,width: double.infinity)),
//     Expanded(
//       flex: 1,
//         child: Container(child:  Text("2"),color:Colors.red)),
//     Expanded(
//       flex: 1,
//         child: Container(child:  Text("2"),color:Colors.yellow)),*/  // EXPANDED CONCEPT
//
//   ],
// ),
