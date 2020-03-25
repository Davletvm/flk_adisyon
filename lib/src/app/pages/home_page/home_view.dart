import 'package:flk_adisyon/core/util/widgets/masa_widget/raised_bahce.dart';
import 'package:flk_adisyon/core/util/widgets/masa_widget/raised_kat1.dart';
import 'package:flk_adisyon/core/util/widgets/masa_widget/raised_salon.dart';
import 'package:flk_adisyon/core/util/widgets/masa_widget/raised_salon2.dart';
import 'package:flk_adisyon/core/util/widgets/masa_widget/raised_teras.dart';
import 'package:flk_adisyon/core/util/widgets/masa_widget/raised_teras2.dart';
import 'package:flk_adisyon/core/util/widgets/raised_button/raised_durum.dart';
import 'package:flk_adisyon/core/util/widgets/raised_button/raised_icecek.dart';
import 'package:flk_adisyon/core/util/widgets/raised_button/raised_kahvalti.dart';
import 'package:flk_adisyon/core/util/widgets/raised_button/raised_salata.dart';
import 'package:flk_adisyon/src/app/model/food/jaguar_food.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:data_tables/data_tables.dart';
import 'package:flk_adisyon/core/util/widgets/raised_button/raised_dana.dart';
import 'package:flk_adisyon/core/util/widgets/raised_button/raised_kuzu.dart';
import 'package:flk_adisyon/core/util/widgets/raised_button/raised_corba.dart';
import 'package:flk_adisyon/core/util/widgets/raised_button/raised_kebap.dart';
import 'package:flk_adisyon/core/util/widgets/raised_button/raised_tatli.dart';
import 'package:flk_adisyon/core/util/widgets/ticket_widget.dart';
import 'package:flk_adisyon/core/util/widgets/datatable/data_table.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var db = new Foods();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text("FLUTTER LOVE"),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("jaguar"),
              accountEmail: new Text("TEST ORM"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown,
                child: new Text("P"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.brown,
                  child: new Text("k"),
                )
              ],
            ),
            new ListTile(
                title: new Text("Page One"),
                trailing: new Icon(Icons.arrow_upward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/a");
                }),
            new ListTile(
                title: new Text("Page Two"),
                trailing: new Icon(Icons.arrow_downward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/b");
                }),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: new Container(
        child: new Stack(
          children: <Widget>[
            ///TicketWidget
            Positioned(
              left: 1160,
              top: 10,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                   FutureBuilder<Ticket_Pay>(


                   )
                ],
              ),



            ),
            /// DataTable Widget
            Positioned(
              left: 820,
              top: 30,

              child: new Column(

                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTables(),
                  ),
                ],
              ),



            ),

            ///Buttons Main_Page
            Positioned(
              left: 170,
              top: 5,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.deepOrange,

                      child: Column(
                        children: <Widget>[ButtonDana()],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              left: 20,

              ///android size
              top: 5,
              bottom: 34,

              child: new Column(
                children: <Widget>[
                  new Card(

                    child: new Container(

                      padding: EdgeInsets.all(25.0),
                      color: Colors.deepOrange,
                      child: Column(
                        children: <Widget>[ButtonKuzu(),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///tableorder
            Positioned(
              left: 170,

              ///android size
              top: 110,
              bottom: 34,

              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.deepOrange,

                      child: Column(
                        children: <Widget>[

                          ButtonCorba()],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///table order
            Positioned(
              left: 315,
              top: 5,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.deepOrange,

                      child: Column(
                        children: <Widget>[ButtonKebap()],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              left: 315,
              top: 110,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.deepOrange,

                      child: Column(
                        children: <Widget>[ButtonSalata()],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 18,
              top: 215,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.deepOrange,

                      child: Column(
                        children: <Widget>[ButtonKahvalti()],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: 110,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.deepOrange,

                      child: Column(
                        children: <Widget>[ButtonIcecek()],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 170,
              top: 215,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.deepOrange,

                      child: Column(
                        children: <Widget>[ButtonDurum()],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 315,
              top: 215,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.deepOrange,

                      child: Column(
                        children: <Widget>[ButtonTatli()],
                      ),
                    ),
                  ),

                ],
              ),
            ),

/*********************************************    MASALAR  ***************************************************************/
            Positioned(
              left: 500,
              top: 5,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.green,

                      child: Column(
                        children: <Widget>[ButtonBahce()],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Positioned(
              left: 645,
              top: 5,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.green,

                      child: Column(
                        children: <Widget>[ButtonSalon()],
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Positioned(
              left: 645,
              top: 110,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.green,

                      child: Column(
                        children: <Widget>[ButtonTeras()],
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Positioned(
              left: 500,
              top: 110,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.green,

                      child: Column(
                        children: <Widget>[ButtonKat1()],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Positioned(
              left: 500,
              top: 215,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.green,

                      child: Column(
                        children: <Widget>[ButtonTeras2()],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Positioned(
              left: 645,
              top: 215,
              bottom: 34,
              child: new Column(
                children: <Widget>[
                  new Card(
                    child: new Container(
                      padding: EdgeInsets.all(25.0),
                      color: Colors.green,

                      child: Column(
                        children: <Widget>[ButtonSalon2()],
                      ),
                    ),
                  ),

                ],
              ),
            ),


            /*********************************************      datatable      ***************************************************************/

          ],
        ),
      ),
    );
  }
}
