// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new, prefer_final_fields, must_be_immutable, non_constant_identifier_names

import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Input(
            ctrl: _gasCtrl, 
            label: "Gasolina",
            ),
            Input(
            ctrl: _gasCtrl, 
            label: "Álcool",
            ),
            Container(
              margin: EdgeInsets.all(30),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(60,),
              ),
              child: FlatButton(
              child: Text('CALCULAR'),
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
                fontFamily: "Big Shoulders Display",
              ),
              onPressed: () {},
            ),),
            
        ],
      ),
    );
  }
  
  FlatButton({required Text child, required Null Function() onPressed, required TextStyle style}) {
    
  }
}




