/*import 'package:flutter/material.dart';
import 'package:iti_flutter_project/widgets/buttons.dart';
import 'package:iti_flutter_project/widgets/text_field.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  final _formKey = GlobalKey<FormState>();
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
                  Padding(padding: const EdgeInsets.symmetric(vertical: 35.0),
                    child: Text("Sign Up page ",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text_field(text: "  Full name: "),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text_field(text:"  User name: "),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text_field(text:"  Email "),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text_field(text:"  Password:  "),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text_field(text:"  Confirm password: "),
                  ),

                  InkWell(
                    onTap: (){},
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
*/