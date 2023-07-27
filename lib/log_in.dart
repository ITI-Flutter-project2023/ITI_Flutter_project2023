import 'package:flutter/material.dart';
import 'package:iti_flutter_project/homelayout.dart';
import 'package:iti_flutter_project/sign_up.dart';
import 'package:iti_flutter_project/widgets/buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController =TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
 bool _obscureText = true;


@override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background4.jpg'),
            fit: BoxFit.fill,
          ),
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

                    Padding(
                     padding: EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                     child: TextFormField(
                         controller: emailController,
                         decoration:
                         InputDecoration(labelText:"  Email",
                           labelStyle:TextStyle(fontSize:30,fontWeight: FontWeight.bold),
                           border: OutlineInputBorder(  borderRadius: BorderRadius.circular(20.0)),
                         ),
                         validator: (value){
                           if (value!.contains("@gmail.com")){
                             return null;
                           }
                           else{
                             return "Not valid";
                           }
                         }
                     ),
                   ),

                    Padding(
                     padding: EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),

                     child: TextFormField(
                         controller: passwordController,

                         obscureText: _obscureText ,
                         decoration: InputDecoration(suffixIcon: IconButton(
                           icon: _obscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility),

                           onPressed: () {
                             setState(() {
                               _obscureText = !_obscureText;
                             });
                           },
                         ),
                           labelText:"password",
                           labelStyle:TextStyle(fontSize:30,fontWeight: FontWeight.bold),
                           border: OutlineInputBorder(  borderRadius: BorderRadius.circular(20.0)),
                         ),
                         validator: (value){
                           if (value!.length>7){
                             return null;
                           }
                           else{
                             return "In correct Password!";
                           }
                         }
                     ),
                   ),

                   InkWell(
                     onTap: ()async{
                       if(_formKey.currentState!.validate()){
                         bool log_result = await signinUsingFirebase(emailController.text, passwordController.text);
                         if (log_result==true){
                           Navigator.push(context,
                             MaterialPageRoute(builder: (context) =>
                                 homelayout()),);
                         }
                         else{
                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Try again, log in failed")));
                         }
                       };
                     },
                     child:  Buttons(button_text: "Log in",),
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
                                   Sign_up()),);
                           },
                           child: const Text("sign up",style: TextStyle(color: Colors.blueAccent),),
                         ),
                       ],
                     ),
                   )



                 ],
                ),z
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: Text(
                      "Log in page ",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: Text_field(
                      text: "  Email",
                      valid: '@gmail.com',
                      message: 'In valid email!',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 8.0, 40, 8.0),
                    child: TextFieldpass(
                      text: "  Password",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => homelayout()),
                        );
                      }
                    },
                    child: const Buttons(
                      button_text: "Log in",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Don't have acount?"),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sign_up()),
                            );
                          },
                          child: const Text(
                            "sign up",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
>>>>>>> 11df1842f6132ace5b22cd7465343ab6dfb9eee0
              ),
            ),
          ),
        ),
      ),
<<<<<<< HEAD
      );

=======
    );
>>>>>>> 11df1842f6132ace5b22cd7465343ab6dfb9eee0
  }
  
  Future<bool> signinUsingFirebase(String email, String password) async {
    bool result =false;
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      final user = userCredential.user;

      if (user != null){
        print(user?.uid);
        result =true;
      }
      return result;
    } catch(e){
      return result;
    }
}
}
