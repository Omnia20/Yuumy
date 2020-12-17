import 'package:flutter/material.dart';
import 'package:new_cake/pages/detail_drink.dart';
import 'package:new_cake/tabpar/model/model.dart';


class Drinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu2.length,
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
                    debugPrint('dddd');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetaileDrink(index: index,)));
                  },
                  child: Row(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            menu2[index].image,
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
                              menu2[index].name,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Text(
                                  menu2[index].desc,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.w300,
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
