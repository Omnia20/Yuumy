import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent[100],
          title: Text('عن التطبيق'),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/icon.jpg'),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    '''تطبيق yummy هو تطبيق يساعدك لكي تصنعي أشهى الحلويات مثل المطاعم الفاخره في منزلك حيث يحتوي ع قسم خاص ب اشهر انواع الكيك ، وقسم يحتوى على المعجنات ،ولكِ قسم اخر للمشروبات لتصنعيها لكِ ولضيوفك بكل سهوله.
ويقدم لكي بعض النصائح القيمه من اجل طعام افضل.''',style: TextStyle(fontSize: 18),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
