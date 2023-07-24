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
      height: 50, width: 120,
      decoration: BoxDecoration(color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(25),border: Border.all(color: Colors.indigo),

      ),

      child: Center(child: Text(widget.button_text,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
    );
  }
}
