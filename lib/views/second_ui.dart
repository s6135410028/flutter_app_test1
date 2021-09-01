import 'package:flutter/material.dart';

class SecondUI extends StatefulWidget {
  const SecondUI({Key? key}) : super(key: key);

  @override
  _SecondUIState createState() => _SecondUIState();
}

class _SecondUIState extends State<SecondUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'SecondUI ',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.grey[850],
            ),
          ),
        ],
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
    );
  }
}
