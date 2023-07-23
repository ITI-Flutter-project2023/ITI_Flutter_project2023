import 'package:flutter/material.dart';
import 'package:iti_flutter_project/sign_up.dart';
import 'package:iti_flutter_project/widgets/buttons.dart';
import 'package:iti_flutter_project/widgets/text_field.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailcontroller =TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(decoration: BoxDecoration(
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
                 children: [
                   Padding(padding: const EdgeInsets.symmetric(vertical: 50.0),
                     child:
                     Text("Log in page ",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                   ),

                   Padding(
                     padding: const EdgeInsets.symmetric(),
                     child: Text_field(text: "  Email",),//valid: '@gmail.com', message: 'not valid email'
                   ),

                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 20.0),
                     child: Text_field(text:"  Password",), //valid: 7, message: 'should contain 8 numbers',
                   ),


                   InkWell(
                     onTap: (){
                       _formKey.currentState!.validate();
                       /*Navigator.push(context,
                         MaterialPageRoute(builder: (context) =>
                             Sign_up()),);*/
                     },
                     child: Buttons(button_text: "log in",),
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
