import 'package:colorchange_provider/Colors_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ColorChange extends StatefulWidget{
  @override
   State<ColorChange> createState()=> _ColorChangeState();
}
class _ColorChangeState extends State<ColorChange>{
  @override
 Widget build(BuildContext context){
  final colorprovider=Provider.of<ColorsProvider>(context);
  return Scaffold(
    backgroundColor: colorprovider.bgcolor,
    appBar: AppBar(
      title: Text("Color Change Provider"),
    ),
    body: Center(
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector
          
          (
            onTap: colorprovider.changeColor,
            child: Text("Tap Me Change colors"))
        ],
      ),
    ),
  );
 }
}