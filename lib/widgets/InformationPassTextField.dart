import 'package:flutter/material.dart';

class InformationPassTextField extends StatelessWidget {
  const InformationPassTextField({
    Key? key,
     required this.text, required this.icon,
  }) : super(key: key);

  
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 5),
            child: TextField(
              obscureText: true,
              
              cursorColor: Colors.blueGrey,
              showCursor: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)),
                hintText: text,
                icon: icon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}