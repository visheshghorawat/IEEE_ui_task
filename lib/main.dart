import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'UI Task';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(title),
      backgroundColor: Colors.red,),
      body: Center(child: Text(' ')),
      drawer: Drawer(

        child: ListView(


          padding: EdgeInsets.fromLTRB(0.0,5.0,5.0,0.0),
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, -10.0),

              title: Text('Gmail', style: TextStyle(color: Colors.red, fontSize:22)),


            ),
            Divider(
              color: Colors.grey[200],
              height: 10,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.only(
                  topRight: const Radius.circular(40.0),
                  bottomRight: const Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.inbox,color: Colors.red,),
                title: Text('Primary',style: TextStyle(color: Colors.red),),
                trailing: Text('99+', style:TextStyle(fontSize: 12, color: Colors.red)),
                onTap: () {

                  Navigator.pop(context);
                },
                dense: true,
              ),
            ),
            ListTile(
              leading: Icon(Icons.people_outline),
              title: Text('Social'),

              onTap: () {

                Navigator.pop(context);
              },
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.local_offer ),
              title: Text('Promotions'),
              trailing: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0)),
                  child:Text('3 new',style: TextStyle(fontSize: 12.0, color:Colors.white ) )
              ),
              onTap: () {

                Navigator.pop(context);
              },
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.info_outline ),
              title: Text('Updates'),
              trailing: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10.0)),
                  child:Text('1 new',style: TextStyle(fontSize: 12.0, color:Colors.white ) )
              ),
              onTap: () {

                Navigator.pop(context);
              },
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.forum),
              title: Text('Forums'),

              onTap: () {

                Navigator.pop(context);
              },
              dense: true,
            ),
            ListTile(
                title:Text('All Labels',
                    style:TextStyle(fontSize:12,color: Colors.grey)),
              dense: true,),
            ListTile(
              leading: Icon(Icons.star_border),
              title: Text('Starred'),

              onTap: () {

                Navigator.pop(context);
              },
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Snoozed'),

              onTap: () {

                Navigator.pop(context);
              },
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.label_important ),
              title: Text('Important'),
              trailing: Text('99+', style:TextStyle(fontSize: 12)),
              onTap: () {

                Navigator.pop(context);
              },
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Sent'),

              onTap: () {

                Navigator.pop(context);
              },
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Schedule'),

              onTap: () {

                Navigator.pop(context);
              },
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.call_missed_outgoing),
              title: Text('Outbox'),

              onTap: () {

                Navigator.pop(context);
              },
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file),
              title: Text('Draft'),

              onTap: () {

                Navigator.pop(context);
              },
              dense: true,
            ),
          ],
        ),
      ),
    );
  }
}
