import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_cake/tabpar/model/model.dart';

class DetailBaked extends StatefulWidget {
  final int index;
  DetailBaked({Key key,this.index}) : super(key:key);

  @override
  _DetailBakedState createState() => _DetailBakedState();
}

class _DetailBakedState extends State<DetailBaked> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Stack(
            children: <Widget>[
              Container(
                height: height*0.45,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  images: [
                    AssetImage(menu1[widget.index].image),
                    AssetImage(menu1[widget.index].image1),
                    AssetImage(menu1[widget.index].image2),
                  ],
                  overlayShadow:true,
                  dotBgColor: Colors.transparent,
                  indicatorBgPadding: 45,
                ),
              ),
              Container(
                width: width,
                margin: EdgeInsets.only(top: height * 0.4),
                padding: EdgeInsets.only(top: 8,bottom: 25,left: 25,right: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Center(
                      child: Text(
                        menu1[widget.index].name,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Trajan Pro',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "المقادير",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      menu1[widget.index].text1,
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 0.5,),
                      textDirection: TextDirection.rtl,
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "طريقه التحضير",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      menu1[widget.index].longDesc,
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.5),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
