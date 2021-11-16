import 'package:flutter/material.dart';
import 'package:shopapp/widgets/InformationPassTextField.dart';
import 'package:shopapp/widgets/InformationTextField.dart';
import 'package:shopapp/widgets/LoginButton.dart';

import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        appBar: AppBar(
                  backgroundColor: Colors.white60,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Text(
                    'Register \nnew account.',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                InformationTextField(
                  text: "Full Name", 
                  icon: Icon(Icons.person,color: Colors.redAccent,),
                  ),
                  InformationTextField(
                  text: "User Name", 
                  icon: Icon(Icons.person_pin,color: Colors.redAccent,),
                  ),
                  InformationTextField(
                  text: "Phone", 
                  icon: Icon(Icons.phone,color: Colors.redAccent,),
                  ),
                  InformationPassTextField(text: "Password", icon: Icon(Icons.lock,color: Colors.redAccent,)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginButton(
                      text: "Register",
                      func: (){},
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 15, color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
                

              ],
            ),
          ),
        ),
      ),
    );
  }
}


