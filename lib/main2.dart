import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "I JUST WANT TEST",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      //APPBAR
      // appBar: new AppBar(
      //   backgroundColor: (Colors.green[900]),
      //   title: new Text("Beranda"),
      // ),

      //DRAWER
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 100,
              
              decoration: BoxDecoration(
                image: new DecorationImage(image: new NetworkImage("https://cdn.pixabay.com/photo/2017/09/05/23/02/background-2719576_960_720.jpg"),
                fit: BoxFit.cover,
                ),
              ),
              child: new Center(
                child: new Row(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.all(5),
                    height: 75,
                    width: 75,
                    child: new CircleAvatar(
                        backgroundImage: NetworkImage("https://timedotcom.files.wordpress.com/2016/05/gettyimages-494848194.jpg"),
                        //width: 100,
                        //fit: BoxFit.cover,
                    ),
                  ),
                  new Text("Dwiki Alfian\ndwikialfian92@gmail.com",style: TextStyle(color: (Colors.black),),),
                ],
              ),
            ),
            ),






            //new UserAccountsDrawerHeader(
              //accountName: new Text("Dwiki Alfian"),
              //accountEmail: new Text("dwikialfian92@gmail.com"),
              //currentAccountPicture: new CircleAvatar(backgroundImage: new NetworkImage("https://timedotcom.files.wordpress.com/2016/05/gettyimages-494848194.jpg"),
              //),
              //decoration: BoxDecoration(
                //image: new DecorationImage(image: new NetworkImage("https://cdn.pixabay.com/photo/2017/09/05/23/02/background-2719576_960_720.jpg"),
                //fit: BoxFit.cover
                //),
              //),
            //),

            //LIST ATAS
            new ListDrawer(ikon: Icons.home, teks: "Beranda",),
            new ListDrawer(ikon: Icons.calendar_today, teks: "Acara",),
            new ListDrawer(ikon: Icons.multiline_chart, teks: "Grafik",),

            //GARIS
            new Container(
              height: 1.0,
              color: (Colors.grey),
            ),

            //LIST BAWAH
            new ListDrawer(ikon: Icons.add, teks: "Record",),
            new ListDrawer(ikon: Icons.book, teks: "Perencanaan",),
            new ListDrawer(ikon: Icons.attach_money, teks: "Tagihan",),
            new ListDrawer(ikon: Icons.help, teks: "Bantuan",),
            new ListDrawer(ikon: Icons.settings, teks: "Setting",),
          ],
        ),
      ),

      //BODY
      body: new ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[

          //SALDO ANDA
          new Card(
              child: new Container(
                padding: EdgeInsets.all(10),
                height: 200,
                child: new Column(
                  children: <Widget>[
                    new Text("Saldo Anda", style: TextStyle(fontSize: 17),),
                    new Container(
                      height: 150,
                      child: new Center(
                        child: new Text("Rp. 4.000.000", style: TextStyle(fontSize: 40),),
                      ),
                    ),
                ],
              ),
            ),
          ),

          //PEMASUKAN PENGELUARAN
          new Card(
            child: new Container(
              padding: EdgeInsets.all(10),
              height: 200,
              child: new Column(
                children: <Widget>[
                  new Text("Rp. 4.000.000", style: TextStyle(fontSize: 20),),
                  new Container(
                    height: 150,
                    child: new Center(
                      child: new Text("Pemasukan"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListDrawer extends StatelessWidget {
ListDrawer ({this.ikon,this.teks});
final IconData ikon;
final String teks;


  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new Icon(ikon),
      title: new Text(teks),
    );
  }
}