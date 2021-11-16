import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/screens/home_page.dart';
import 'package:shopapp/widgets/ConnectWith.dart';
import 'package:shopapp/widgets/InformationPassTextField.dart';
import 'package:shopapp/widgets/InformationTextField.dart';
import 'package:shopapp/widgets/LoginButton.dart';
import 'package:shopapp/widgets/RegisterWithSocial.dart';
import 'forgot_pass_page.dart';
import 'signup_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'urBasics.',
      home: Scaffold(
      
        appBar: AppBar(
          backgroundColor: Colors.white60,
          title: Row(
            children: [
              Text(
                'Welcome to\t',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey),
              ),
              Text(
                'urBasics.',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey.shade700),
              ),
            ],
          ),
        ),
        body: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Text(
              'Login to \nfind the best products.',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
            ),
          ),
          InformationTextField(text: "User Name", icon: Icon(Icons.person,color: Colors.redAccent,)),
          InformationPassTextField(
            
            icon: Icon(Icons.lock,color: Colors.redAccent,),
            text: "Password",
            ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage()));
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: 12, color: Colors.redAccent,fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginButton(text: "Login",func: (){
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePge()));
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dont have an account?'),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 15, color: Colors.redAccent,fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          ConnectWith(),
          Container(
            margin: EdgeInsets.only(left: 30,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                registerWithSocial(
                  svg: SvgPicture.asset("assets/images/facebook.svg"),
                  func: (){print("facebook");},
                  text: "Facebook",
                ),
                registerWithSocial(
                  svg: SvgPicture.asset("assets/images/google.svg"),
                  func: (){print("google");},
                  text: "Google",
                
                ),
                registerWithSocial(
                  svg: SvgPicture.asset("assets/images/apple.svg"),
                  func: (){print("apple");},
                  text: "Apple",
                ),
                registerWithSocial(
                  svg: SvgPicture.asset("assets/images/twitter.svg"),
                  func: (){print("tw");},
                  text: "Twitter",
                ), 
              ],
            ),
          ), 
        ],
      ),
    );
  }
}








