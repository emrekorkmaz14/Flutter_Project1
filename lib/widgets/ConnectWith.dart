import 'package:flutter/material.dart';

class ConnectWith extends StatelessWidget {
  const ConnectWith({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              height: 75,
              color: Colors.black,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'or connect with',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Divider(
              height: 75,
              color: Colors.black,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}