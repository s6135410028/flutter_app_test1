import 'package:flutter/material.dart';
import 'package:flutter_app_test1/views/forth_tabpage1_ui.dart';
import 'package:flutter_app_test1/views/forth_tabpage2_ui.dart';
import 'package:flutter_app_test1/views/forth_tabpage3_ui.dart';
import 'package:flutter_app_test1/views/forth_tabpage4_ui.dart';
import 'package:flutter_app_test1/views/forth_tabpage5_ui.dart';
import 'package:flutter_app_test1/views/forth_tabpage6_ui.dart';

class ForthUI extends StatefulWidget {
  const ForthUI({Key? key}) : super(key: key);

  @override
  _ForthUIState createState() => _ForthUIState();
}

class _ForthUIState extends State<ForthUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text(
          'ยินดีต้อนรับ ',
          style: TextStyle(
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle:true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Witchakorn Worawongsuwan',
              ),
              accountEmail: Text(
                'ID : 6135410028',
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/Untitled_Artwork (21).png',
                ),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/saulogo.png',
                )
              ],
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/MicrosoftTeams-image (1).png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'หน้าหลัก',
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ตารางสอน',
              ),
              leading: Icon(
                Icons.home,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ตารางสอบ',
              ),
              leading: Icon(
                Icons.ac_unit_sharp,
              ),
              trailing: Text(
                '999',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.red,
            ),
            ListTile(
        
                onTap: () {},
                title: Text(
                  'Menu 4',
                ),
                trailing: Icon(
                  Icons.access_alarm,
                  color: Colors.blue,
                ),
                ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text(
                'จบการทำงาน',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                ),
              ),
              trailing: Icon(
                Icons.exit_to_app,
              ),
            )
          ],
        ),
      ),
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            Container(
              color: Colors.black,
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.green,
                indicatorColor: Colors.green[800],
                tabs: [
                  Tab(
                    text: 'tab page1',
                  ),
                  Tab(
                    text: 'tab page2',
                  ),
                  Tab(
                    text: 'tab page3',
                  ),
                  Tab(
                    text: 'tab page4',
                  ),
                  Tab(
                    text: 'tab page5',
                  ),
                  Tab(
                    text: 'tab page6',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ForthTabpage1UI(),
                  ForthTabpage2UI(),
                  ForthTabpage3UI(),
                  ForthTabpage4UI(),
                  ForthTabpage5UI(),
                  ForthTabpage6UI(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
