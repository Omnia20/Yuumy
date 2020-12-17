import 'package:flutter/material.dart';
import 'package:new_cake/pages/detail_baked.dart';
import 'package:new_cake/tabpar/model/model.dart';

class Baked extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu1.length,
        itemBuilder: (context, int key) {
          return MenuItemCard(index: key);
        },
      ),
    );
  }
}


class MenuItemCard extends StatelessWidget {
  final int index;

  MenuItemCard({this.index});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 40),
        child: AspectRatio(
          aspectRatio: 3 / 1,
          child: Container(
            child: Row(
              children: <Widget>[
                GestureDetector(

                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailBaked(index: index,)));
                  },



                  child: Row(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            menu1[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              menu1[index].name,
                              style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold,
                              ),
                            ),

                            Expanded(
                              child: SingleChildScrollView(
                                child: Text(
                                  menu1[index].desc,
                                  style: TextStyle(
                                    fontSize: 15,color: Colors.grey[600], fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

