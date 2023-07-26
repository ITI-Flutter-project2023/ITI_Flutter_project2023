//import 'dart:js_util';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:iti_flutter_project/widgets/buttons.dart';
import 'package:iti_flutter_project/widgets/text_field_email.dart';
import 'package:iti_flutter_project/widgets/text_field_pass.dart';

class Sign_up extends StatefulWidget {

  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;



  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(context) {
    return  Scaffold(
      body: Container(
        //height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,


        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background4.jpg'),
          fit: BoxFit.fill,),
      ),
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sign up page ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFormField(
                        decoration: InputDecoration(labelText:"  full name",
                          labelStyle:TextStyle(fontSize:30,fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(  borderRadius: BorderRadius.circular(20.0)),),
                        validator: (value){
                          if (value!.isNotEmpty){return null;}
                          else{return "Please write your full name";}}),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFormField(
                        decoration: InputDecoration(labelText:"  User name",
                          labelStyle:TextStyle(fontSize:30,fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(  borderRadius: BorderRadius.circular(20.0)),),
                        validator: (value){
                          if (value!.isNotEmpty){return null;}
                          else{return "Please write user name";}}),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: Text_field(text:"  E-mail ", valid: "@gmail.com", message: 'Not valid e-mail',),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFormField(
                        controller: _passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(suffixIcon: IconButton(
                          icon: _obscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                          labelText:"  Password",
                          labelStyle:TextStyle(fontSize:30,fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(  borderRadius: BorderRadius.circular(20.0)),
                          ),
                        validator: (value){
                          if (value!.length>7){return null;}
                          else{return "Should be more than 7 characters";}}),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(suffixIcon: IconButton(
                        icon: _obscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                        labelText:"  Confirm password",
                        labelStyle:TextStyle(fontSize:30,fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(  borderRadius: BorderRadius.circular(20.0)),
                      ),
                      validator: (value) {if
                        (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      _formKey.currentState!.validate();

                    },
                    child: Buttons(button_text: "Sign up",),
                  )



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
