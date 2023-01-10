import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home : MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Dashboard SPP"),
        backgroundColor: Colors.blue[500],
      ),
      backgroundColor: Colors.blue[50],
      
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("Budiman", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),), 
              accountEmail: new Text("budiman77@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://akcdn.detik.net.id/visual/2022/10/31/potret-cipung-pemotretan-ala-oppa-korea-3_169.jpeg?w=900&q=90"),
              ),
              decoration: new BoxDecoration(color: Colors.blue[500]), 
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profil"),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text("Ubah Password"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Tentang"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Keluar"),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            // Card(
            //   margin: EdgeInsets.all(8.0),
            //   child: InkWell(
            //     onTap: (){},
            //     splashColor: Colors.blue,
            //     child: Center(
            //       child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: <Widget>[
            //           Icon(
            //             Icons.account_balance,
            //             size:70.0,
            //             color: Colors.brown,
            //             ),
            //           Text("Pembayaran", style: new TextStyle(fontSize: 17.0))
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.school,
                        size:70.0,
                        color: Colors.blueAccent,
                        ),
                      Text("Siswa", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.book_online,
                        size:70.0,
                        color: Colors.lightGreen,
                        ),
                      Text("Tagihan", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            // MyMenu(
            //   title: "Akademik",
            //   icon: Icons.account_balance,
            //   warna: Colors.brown,
            // ),
            // MyMenu(
            //   title: "Informasi",
            //   icon: Icons.info_outline,
            //   warna: Colors.blueGrey,
            // ),
          ],
          ),)
    );
  }
}

// class MyMenu extends StatelessWidget {
//   MyMenu({this.title, this.icon, this.warna});

//   final String title;
//   final IconData icon; 
//   final MaterialColor warna;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//               margin: EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: (){},
//                 splashColor: Colors.blue,
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       Icon(
//                         icon,
//                         size:70.0,
//                         color: warna,
//                         ),
//                       Text(title, style: new TextStyle(fontSize: 17.0))
//                     ],
//                   ),
//                 ),
//               ),
//             );
//   }
// }

