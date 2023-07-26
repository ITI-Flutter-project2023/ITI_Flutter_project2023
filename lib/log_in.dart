import 'package:flutter/material.dart';
import 'package:iti_flutter_project/homelayout.dart';
import 'package:iti_flutter_project/sign_up.dart';
import 'package:iti_flutter_project/widgets/buttons.dart';
import 'package:iti_flutter_project/widgets/text_field_email.dart';
import 'package:iti_flutter_project/widgets/text_field_pass.dart';

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
      body: Container(
        width: MediaQuery.of(context).size.width,

        decoration:  BoxDecoration(
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
                   const Padding(
                     padding: EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                     child: Text("Log in page ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                   ),

                   const Padding(
                     padding: EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                     child: Text_field(text: "  Email", valid: '@gmail.com', message: 'In valid email!',),
                   ),

                   const Padding(
                     padding: EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                     child: TextFieldpass(text:"  Password", ),
                   ),

                   InkWell(
                     onTap: (){ if
                       (_formKey.currentState!.validate()){
                       Navigator.push(context,
                       MaterialPageRoute(builder: (context) =>
                            homelayout()),);
                     }
                     },
                     child: const Buttons(button_text: "Log in",),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       children: [
                         const Text("Don't have acount?"),
                         InkWell(
                           onTap: (){
                             Navigator.push(context,
                               MaterialPageRoute(builder: (context) =>
                                   const Sign_up()),);
                           },
                           child: const Text("sign up",style: TextStyle(color: Colors.blueAccent),),
                         ),
                       ],
                     ),
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
