import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('من نحن', style: TextStyle(color: Colors.blue)),
            backgroundColor: Colors.white70,
          ),
          body: ListView(
            padding: const EdgeInsets.only(top: 30),
            children: [
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 60, right: 20)),
                  Text(
                    'Team',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.yellow.shade700,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Elite',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  const Divider(),
                  // Text('كاميرات مراقبة',textAlign: TextAlign.center,style: TextStyle(color: Colors.blue.shade500,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text(
                    '1_تركيب كاميرات المراقبة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '2_تركيب انظمة محاسبية',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '3_برمجة تطبيقات',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '1.3_Flutter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.yellow.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '2.3_android',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.yellow.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '3.3_desktop',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.yellow.shade800,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '4_دعاية واعلان',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Divider(),
              // Image.asset('photo/about.jpg'),
              Container(
                padding: const EdgeInsets.only(top: 10, right: 50, left: 50),
                child: Column(
                  children: const [
                    Text(
                      "م/رائد محمد الفانمي",
                      textAlign: TextAlign.center,
                    ),

                    // Text("gmail", style: TextStyle(color: Colors.orange)),
                    // Text(
                    //   "engraedalghanmi@gmail.com",
                    //   style: TextStyle(color: Colors.blue),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    // Text("فيسبوك", style: TextStyle(color: Colors.indigo)),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 120, right: 120),
                child: Column(
                  children: [
                    Image.asset('images/icon/fe.png'),
                    Image.asset('images/icon/we.png'),

                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          )),
    );
  }
}
