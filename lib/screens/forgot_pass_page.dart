import 'package:flutter/material.dart';
import 'package:shopapp/widgets/InformationTextField.dart';
import 'package:shopapp/widgets/LoginButton.dart';

import 'login_page.dart';

class ForgotPasswordPage extends StatelessWidget {
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
                    'Forgot \nPassword?',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff293559)
                    ),
                  ),
                ),
                
                InformationTextField(text: "E-mail", icon: Icon(Icons.mail,color: Colors.amber.shade800,)),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                  child: Text(
                    "Please provide your email to reset your password. Please don't share any data to other people.",
                    style: TextStyle(
                        fontSize: 13, color: Colors.blueGrey.shade300),
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginButton(text: "ResetPassword",func: (){},),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Remember now?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: Text(
                        'Login here',
                        style: TextStyle(fontSize: 15, color: Colors.amber.shade800),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
