import 'package:flutter/material.dart';
import 'package:flutter_app_test1/views/third_a_ui.dart';
import 'package:flutter_app_test1/views/third_b_ui.dart';
import 'package:flutter_app_test1/views/third_c_ui.dart';
import 'package:flutter_app_test1/views/third_d_ui.dart';

class ThirdUI extends StatefulWidget {
  const ThirdUI({ Key? key }) : super(key: key);

  @override
  _ThirdUIState createState() => _ThirdUIState();
}

class _ThirdUIState extends State<ThirdUI> {
  
  List page =[
    ThirdAUI(),
    ThirdBUI(),
    ThirdCUI(),
    ThirdDUI(),
  ];

  int _currentIndex = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.purple,
        title: Text(
          'ThirdUI',
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
      onTap: (value){
        setState(() {
          _currentIndex = value;
        });
      },
      currentIndex:_currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.green,
      selectedItemColor: Colors.purple,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label:'Page A',
          
        ),
         BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label:'Page B',
          
        ),
         BottomNavigationBarItem(
          icon: Icon(
            Icons.skateboarding,
          ),
          label:'Page C',
          
        ),
         BottomNavigationBarItem(
          icon: Icon(
            Icons.exit_to_app,
          ),
          label:'Page D',
          
        ),
      ],
    ),
      body: page.elementAt(_currentIndex),  
    );
  }
}