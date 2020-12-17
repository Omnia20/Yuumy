import 'dart:io';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Ahmed/AndroidStudioProjects/testttt/lib/pages/about.dart';
import 'package:new_cake/pages/advice.dart';
import 'package:new_cake/tabpar/baked.dart';
import 'package:new_cake/tabpar/cakes.dart';
import 'package:new_cake/tabpar/drink.dart';
import 'package:share/share.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldkey,
      endDrawer: ClipPath(
        clipper: _DrawerClipper(),
        child: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/drawer.jpg'))),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                trailing:
                    Icon(Icons.bubble_chart, color: Colors.teal, size: 30),
                title: Text(
                  'نصائح',
                  style: TextStyle(fontSize: 25),
                  textDirection: TextDirection.rtl,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Advice()));
                },
              ),
              ListTile(
                trailing: Icon(Icons.touch_app, color: Colors.teal, size: 30),
                title: Text(
                  'عن التطبيق',
                  style: TextStyle(fontSize: 25),
                  textDirection: TextDirection.rtl,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
              ListTile(
                trailing: Icon(Icons.share, color: Colors.teal, size: 30),
                title: Text(
                  'مشاركه',
                  style: TextStyle(fontSize: 25),
                  textDirection: TextDirection.rtl,
                ),
                onTap: () {
                  final String url ="https://drive.google.com/file/d/14Mfmf_kmwob60QJtSfYPOZDvw0dMTSkw/view?usp=sharing";
                  final RenderBox box =context.findRenderObject();
                  Share.share(url,sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
                },
              ),
              ListTile(
                  trailing: Icon(
                    Icons.exit_to_app,
                    color: Colors.teal,
                    size: 30,
                  ),
                  title: Text(
                    'خروج',
                    style: TextStyle(fontSize: 25),
                    textDirection: TextDirection.rtl,
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return Directionality(
                            textDirection: TextDirection.rtl,
                            child: AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              title: Text(
                                'خروج',
                                style: TextStyle(
                                    fontFamily: 'Trajan Pro',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: Text(
                                'هل تريد اغلاق التطبيق؟',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18),
                              ),
                              elevation: 10,
                              actions: <Widget>[
                                FlatButton(
                                  child: Text(
                                    'نعم',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () => exit(0),
                                ),
                                FlatButton(
                                  child: Text(
                                    'لا',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          );
                        });
                  }),
            ],
          ),
        ),
      ),
      body:  SingleChildScrollView(
        child: Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: height * 0.3,
                      width: width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/appbar.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.0),
                              Colors.black.withOpacity(0.0),
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(1.0),
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 17,
                      top: 22,
                      child: IconButton(
                        icon: Icon(
                          Icons.subject,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          _scaffoldkey.currentState.openEndDrawer();
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 25,
                      child: Text(
                        'Make it With \nLove',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 25,
                          letterSpacing: 0.9,
                           fontFamily: 'Schyler'
                        ),
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
                  child: Container(
                    width: width,
                    padding: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: DefaultTabController(
                      length: 3,
                      child: Column(
                        children: <Widget>[
                          TabBar(
                            labelColor: Colors.black,
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Trajan Pro',
                            ),
                            //indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Colors.indigo,
                            tabs: <Widget>[
                              Tab(
                                child: Text(
                                  "كيك",
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "معجنات",
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "مشروبات",
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: height * 0.6,
                            child: TabBarView(
                              children: <Widget>[
                                Cakes(),
                                Baked(),
                                Drinks(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}

class _DrawerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(50, 0);
    path.quadraticBezierTo(0, size.height / 2, 50, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
