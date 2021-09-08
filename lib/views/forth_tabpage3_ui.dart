import 'package:flutter/material.dart';

class ForthTabpage3UI extends StatelessWidget {
  const ForthTabpage3UI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ราตรีสวัสดิ์',
          style: TextStyle(
            fontFamily: 'Kanit',
            color: Colors.blue,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}