import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("Ask me Anything"),
      ),
      body: appBody(),
    ),
  ));
}

class appBody extends StatefulWidget {


  @override
  State<appBody> createState() => _appBodyState();
}

class _appBodyState extends State<appBody> {
  int variantNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: (){
              setState(() {
                if(variantNumber> 4){
                  variantNumber = Random().nextInt(5)+1;
                }else{
                  variantNumber++;
                }
              });
            },
              child: Image(
                image: AssetImage('images/ball$variantNumber.png'),
              ),
            ),

        ],
      ),
    );
  }
}
