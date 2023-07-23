import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final String button_text;
  const Buttons({super.key,required this.button_text});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80, width: 200,
      decoration: BoxDecoration(color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.lightBlueAccent,
            //spreadRadius: 5,
            blurRadius: 50,
            //offset: Offset(0, 3),
          ),
        ],
      ),

      child: Center(child: Text(widget.button_text,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
    );
  }
}
