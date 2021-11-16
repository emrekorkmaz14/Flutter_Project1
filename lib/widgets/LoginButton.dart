import 'package:flutter/material.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({ Key? key, required this.text, required this.func }) : super(key: key);
  final String text;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 50),
        child: ElevatedButton(
          onPressed: () {func();},
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey),
        ),
      ),
    );
      
    
  }
}