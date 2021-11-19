// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class registerWithSocial extends StatefulWidget {
  const registerWithSocial({
    Key? key, required this.svg, required this.func, required this.text,
  }) : super(key: key);
  final SvgPicture svg;
  final Function func;
  final String text;

  @override
  State<registerWithSocial> createState() => _registerWithSocialState();
}

// ignore: camel_case_types
class _registerWithSocialState extends State<registerWithSocial> {
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(8),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0xffeaf1ff),
                    ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(height:5,width: 5, child: widget.svg,),
          ),
          Text(
              widget.text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 14),
            ),
        ],
        
      ),
      onTap: () {widget.func();},
    );
  }
}