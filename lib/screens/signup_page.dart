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
                  backgroundColor: Color(0xff293559),
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.amber.shade800,
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
                      color: Color(0xff293559),
                    ),
                  ),
                ),
                InformationTextField(
                  text: "Full Name", 
                  icon: Icon(Icons.person,color: Colors.amber.shade800,),
                  ),
                  InformationTextField(
                  text: "User Name", 
                  icon: Icon(Icons.person_pin,color: Colors.amber.shade800,),
                  ),
                  InformationTextField(
                  text: "Phone", 
                  icon: Icon(Icons.phone,color: Colors.amber.shade800,),
                  ),
                  InformationPassTextField(text: "Password", icon: Icon(Icons.lock,color: Colors.amber.shade800,)),
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
                        style: TextStyle(fontSize: 15, color: Colors.amber.shade800),
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


