import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:new_cake/tabpar/model/model.dart';

class Advice extends StatefulWidget {
  @override
  _AdviceState createState() => _AdviceState();
}

class _AdviceState extends State<Advice> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text('شويه نصائح'),
        ),
        body: Container(
          margin: EdgeInsets.all(12),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: menu4.length,

            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: (){
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

                              content: SingleChildScrollView(
                                child: Text(
                                  menu4[index].longDesc,
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.w300,
                                      fontSize: 19),
                                ),
                              ),
                              elevation: 8,
                              actions: <Widget>[
                                FlatButton(
                                  child: Text(
                                    'حسنا',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),

                              ],
                            ),
                          );
                        });
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(menu4[index].image),
                                fit: BoxFit.cover
                            )
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(0.0),
                                    Colors.black.withOpacity(0.0),
                                    Colors.black.withOpacity(0.0),
                                    Colors.black.withOpacity(0.5),
                                    Colors.black.withOpacity(.8),
                                  ]
                              )
                          ),
                        ),
                      ),
                      Positioned(
                          bottom:20 ,
                          right: 20,
                          child: RichText(
                              text: TextSpan(
                                text: menu4[index].text1,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 18,
                                ),
                              )
                          )
                      )
                    ],

                  )
              );
            },
          ),
        ),
      ),
    );
  }
}

