import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

void main() {
  runApp(MaterialApp(
    title: "Just Test",
    home: new JustHome(),
    routes: <String, WidgetBuilder>{
      '/Halsatu': (BuildContext context) => new JustHome(),
      '/Haldua': (BuildContext context) => new HalDua(),
    },
  ));
}

class JustHome extends StatefulWidget {
  @override
  _JustHomeState createState() => _JustHomeState();
}

class _JustHomeState extends State<JustHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: new AppBar(
      //   title: new Text("Just Text"),
      //   actions: <Widget>[
      //     new Container(
      //       padding: EdgeInsets.all(5),
      //       child: new Center(
      //         child: new Text("Settings "),
      //       ),
      //     ),
      //     new Container(
      //       padding: EdgeInsets.all(10),
      //       child: new Center(
      //         child: new Text("Help"),
      //       ),
      //     ),
      //   ],
      // ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 100,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1530482817083-29ae4b92ff15?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=44f4aebbd1e1371d5bf7dc22016c5d29&w=1000&q=80"),
                    fit: BoxFit.cover),
              ),
              child: new Center(
                child: new Row(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.all(5),
                      height: 75,
                      width: 75,
                      child: new CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://reddeadredemption2.wiki.fextralife.com/file/Red-Dead-Redemption-2/rdr2_arthur2.jpg"),
                        //width: 100,
                        //fit: BoxFit.cover,
                      ),
                    ),
                    new Text(
                      "Arthur Morgan\nreddead.wikia.com",
                      style: TextStyle(
                        color: (Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new JustList(
              ikon: Icons.home,
              teks: "Beranda",
            ),
            new JustList(
              ikon: Icons.calendar_today,
              teks: "Acara",
            ),
            new JustList(
              ikon: Icons.multiline_chart,
              teks: "Grafik",
            ),
            new Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: new Container(
                height: 1,
                color: Colors.grey,
              ),
            ),
            new JustList(
              ikon: Icons.add,
              teks: "Record",
            ),
            new JustList(
              ikon: Icons.book,
              teks: "Perencanaan",
            ),
            new JustList(
              ikon: Icons.attach_money,
              teks: "Tagihan",
            ),
            new JustList(
              ikon: Icons.help,
              teks: "Bantuan",
            ),
            new JustList(
              ikon: Icons.settings,
              teks: "Settings",
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            // height: 80,
            color: Colors.green,
            child: new Row(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(10),
                  child: new Center(
                    child:
                        new Image.asset("img/basicassets/logo.png", width: 30),
                  ),
                ),
                new Center(
                  child: new Container(
                    child: new Text(
                      "Beranda",
                      style: TextStyle(fontFamily: "Bangers", fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Card(
            child: new Container(
              height: 150,
              child: new Center(
                child: new ListView(
                  children: <Widget>[
                    new ListTile(
                        title: new Text("Saldo Anda"),
                        trailing: new Text("IDR - Rupiah")),
                    new Center(
                      child: new Container(
                        padding: EdgeInsets.all(10),
                        child: new Text(
                          "Rp.",
                          style: TextStyle(fontSize: 30, fontFamily: "Bangers"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          new Container(
            child: new RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Haldua');
              },
              textColor: Colors.black,
              color: (Colors.white),
              child: new ListTile(
                title: new Text("Just Text"),
                trailing: new Icon(Icons.home),
              ),
            ),
          ),
          new Calendar(
            isExpandable: true,
          )
        ],
      ),
    );
  }
}

class JustList extends StatelessWidget {
  JustList({this.teks, this.ikon});
  final IconData ikon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        Navigator.pushNamed(context, '/Haldua');
      },
      title: new Text(teks),
      leading: new Icon(ikon),
    );
  }
}

class HalDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Just Test"),
      ),
    );
  }
}
