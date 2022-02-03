import 'dart:ui';
import 'package:cv/CV_App/s_app.dart';
import 'package:cv/Language/language_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:animated_radial_menu/animated_radial_menu.dart';
import 'package:flutter/widgets.dart';
import 'dart:io' show Platform, exit;
import 'package:flutter/services.dart';

import '../main.dart';
import 'about.dart';

class AppBar_App extends StatefulWidget {
  const AppBar_App({Key? key}) : super(key: key);
  @override
  _AppBar_AppState createState() => _AppBar_AppState();
}

class _AppBar_AppState extends State<AppBar_App> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('CV'),
          // leading: IconButton(onPressed: (){}, icon: Icon(Icons.sms_sharp)),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.email_outlined)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.local_phone_outlined)),
            // IconButton(onPressed: () {}, icon: const Icon(Icons.local_phone_outlined)),
          ],
          brightness: Brightness.dark,
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Column(children: [
                Container(
                  color: Colors.white38,
                  child: Image.asset(
                    'images/fff.png',
                    width: 300,
                    height: 200,
                  ),
                ),
                ListTile(
                  title: Text(
                    string.get(61),
                  ),
                  leading: const Icon(Icons.person_pin_circle_outlined,
                      color: Colors.blue),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const personal_information()),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    string.get(7),
                  ),
                  leading: const Icon(Icons.contact_page_outlined,
                      color: Colors.blue),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Qualifications()),
                  ),
                ),
                const Divider(),
                ListTile(
                  title: Text(
                    string.get(35),
                  ),
                  leading:
                      const Icon(Icons.volunteer_activism, color: Colors.blue),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Practical_experiences()),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    string.get(59),
                  ),
                  leading: const Icon(Icons.drive_file_rename_outline,
                      color: Colors.blue),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => S_App()),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    string.get(62),
                  ),
                  leading: const Icon(Icons.language, color: Colors.blue),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contesx) => lang_View(redrow: _refresh)),
                    );
                  },
                  // onTap: ()=> Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (_) => ()),
                  // ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    string.get(60),
                  ),
                  leading: Icon(Icons.sync, color: Colors.blue),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => About()),
                  ),
                ),
                const Divider(),
                ListTile(
                  title: Text(
                    string.get(58),
                  ),
                  leading: const Icon(
                    Icons.exit_to_app_sharp,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    if (Platform.isAndroid) {
                      SystemNavigator.pop();
                    } else if (Platform.isIOS) {
                      exit(0);
                    }
                  },
                ),
              ]),
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
                  Icon(Icons.person_sharp, color: Colors.indigo),
                  Text('المعلومات الشخصية'),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.business_center_rounded, color: Colors.green),
                  Text('المؤهلات التعليمية'),
                ],
              ),
              Row(
                children: const [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
                  Icon(Icons.drive_file_rename_outline, color: Colors.blue),
                  Text('الدورات التعليمية'),
                  SizedBox(
                    width: 33,
                  ),
                  Icon(Icons.language_rounded, color: Colors.orange),
                  Text('اللغات'),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.sports_kabaddi, color: Colors.teal),
                  Text('الهوايات'),
                ],
              ),
              Row(
                children: const [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
                  Icon(Icons.laptop, color: Colors.pink),
                  Text('الخبرات العملية'),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.sports_handball_outlined,
                    color: Colors.purple,
                  ),
                  Text('المهارات الشخصية'),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: RadialMenu(
                  children: [
                    RadialButton(
                      icon: const Icon(
                        Icons.sports_kabaddi,
                      ),
                      buttonColor: Colors.teal,
                      onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Hobbies()),
                      ),
                    ),
                    //المواهلات التعليميه
                    RadialButton(
                      icon: const Icon(Icons.business_center_rounded),
                      buttonColor: Colors.green,
                      onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Qualifications()),
                      ),
                    ),
                    //المهارات
                    RadialButton(
                      icon: const Icon(Icons.sports_handball_outlined),
                      buttonColor: Colors.purple,
                      onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Personal_skills()),
                      ),
                    ),
                    RadialButton(
                      icon: const Icon(Icons.language_rounded),
                      buttonColor: Colors.orange,
                      onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Languages()),
                      ),
                    ),
                    RadialButton(
                      icon: const Icon(
                        Icons.drive_file_rename_outline,
                      ),
                      buttonColor: Colors.blue,
                      onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Educational_courses()),
                      ),
                    ),
                    RadialButton(
                      icon: const Icon(
                        Icons.person_sharp,
                      ),
                      buttonColor: Colors.indigo,
                      onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => personal_information()),
                      ),
                    ),
                    RadialButton(
                      icon: const Icon(Icons.laptop),
                      buttonColor: Colors.pink,
                      onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Practical_experiences()),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _refresh() {
    setState(() {});
  }
}

//معلومات شخصيه
class personal_information extends StatelessWidget {
  const personal_information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text(string.get(61)),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              Column(
                children: [
                  Center(
                    child: Image.asset(
                      'images/fff.png',
                      width: 250,
                    ),
                  ),
                  const Text('المعلومات الشخصية',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          color: Colors.blue,
                          fontSize: 15)),
                  const Divider(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 25),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(string.get(1),
                              style: const TextStyle(fontWeight: FontWeight.w200)),
                          onTap: () {},
                          leading: Image.asset(
                            'images/dd.png',
                            color: Colors.blue,
                            width: 25,
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          title: Text(string.get(2),
                              style: const TextStyle(fontWeight: FontWeight.w200)),
                          onTap: () {},
                          leading: Image.asset(
                            'images/pr.png',
                            color: Colors.blue,
                            width: 25,
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          title: Text(string.get(3),
                              style: const TextStyle(fontWeight: FontWeight.w200)),
                          onTap: () {},
                          leading: Image.asset(
                            'images/l.png',
                            color: Colors.blue,
                            width: 25,
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          title: const Text(
                            '967-775590114',
                            style: TextStyle(fontWeight: FontWeight.w200),
                          ),
                          onTap: () {},
                          leading: Image.asset(
                            'images/ph.png',
                            color: Colors.blue,
                            width: 25,
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          title: const Text('engraedalghanmi@gmail.com',
                              style: TextStyle(fontWeight: FontWeight.w200)),
                          onTap: () {},
                          leading: Image.asset(
                            'images/em.png',
                            color: Colors.blue,
                            width: 25,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ListTile(
                            title: Text(string.get(63),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: Colors.blue,
                                  letterSpacing: 3.5,
                                )),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => S_App()),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

//المؤهلات
class Qualifications extends StatelessWidget {
  const Qualifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            string.get(64),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 200, vertical: 15)),
                Image.asset(
                  'images/Qualification/tc.png',
                  color: Colors.blue,
                  width: 70,
                ),
                const Text(
                  'المؤهلات التعليمية',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(8),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/Qualification/tc.png',
                          color: Colors.blue,
                          width: 30,
                        ),
                        subtitle: Text(string.get(9),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(11),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/Qualification/com.png',
                          color: Colors.blue,
                          width: 30,
                        ),
                        subtitle:
                            const Text('الرخصة الدولية لقيادة الحاسب الألى',
                                style: TextStyle(
                                  color: Colors.blue,
                                )),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(12),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/Qualification/le.png',
                          color: Colors.blue,
                          width: 30,
                        ),
                        subtitle: Text(string.get(13),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(66),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/Qualification/m.png',
                          color: Colors.blue,
                          width: 30,
                        ),
                        subtitle: Text(string.get(66),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(14),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/Qualification/sh.png',
                          color: Colors.blue,
                          width: 30,
                        ),
                        subtitle: Text(string.get(67),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//	الدورات التعليمية
class Educational_courses extends StatelessWidget {
  const Educational_courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            string.get(15),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 200, vertical: 15)),
                Image.asset(
                  'images/Qualification/tc.png',
                  color: Colors.blue,
                  width: 70,
                ),
                const Text(
                  'الدورات التعليمية',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(20),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: Text(string.get(21),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(22),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: Text(string.get(21),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(18),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: Text(string.get(68),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),

                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(17),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: Text(string.get(69),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(14),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: const Text('Google',
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      //.............................................................................
                      //.............................................................................
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(23),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: Text(string.get(70),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(24),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: Text(string.get(70),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(25),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: Text(string.get(70),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(80),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: Text(string.get(70),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),

                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(27),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: Text(string.get(70),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(28),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: const Text(
                            'المنظمة العالمية لتنمية وتمكين المجتمعات المحلية',
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(29),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: const Text('مستشفى المجد التخصصي',
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(16),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: Text(string.get(67),
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(31),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: const Text('مبادرة شباب',
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(32),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: const Text('المعهد العالي للعلوم الصحية',
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                      const Divider(
                        thickness: 2.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(string.get(33),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        leading: Image.asset(
                          'images/icon/one.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                        subtitle: const Text('مؤسسة لمسه حياه',
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//	اللغات
class Languages extends StatelessWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "اللغات",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 50)),
            Center(
              child: Image.asset(
                'images/Qualification/R.png',
                width: 70,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'اللغات',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, right: 30),
              child: Column(
                children: [
                  const Divider(thickness: 1.1),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: const Text('اللغة العربية الأم',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        )),
                    leading: Image.asset(
                      'images/Qualification/R.png',
                      width: 50,
                    ),
                    subtitle: Row(
                      children: const [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.star, color: Colors.orangeAccent),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.star, color: Colors.orangeAccent),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.star, color: Colors.orangeAccent),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.star, color: Colors.orangeAccent),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1.1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: const Text('اللغة الإنجليزية',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        )),
                    leading: Image.asset(
                      'images/Qualification/R.png',
                      width: 50,
                    ),
                    subtitle: Row(
                      children: const [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.star_outlined, color: Colors.orangeAccent),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.star_outlined, color: Colors.orangeAccent),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.star_half, color: Colors.orangeAccent),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.star_half, color: Colors.orangeAccent),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.star_half, color: Colors.orangeAccent),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//	الهوايات
class Hobbies extends StatelessWidget {
  const Hobbies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("الهوايات"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 15)),
              Center(
                  child: Image.asset(
                'images/Qualification/top.png',
                width: 80,
              )),
              const Text(
                'الهوايات',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.blue),
              ),
              Column(
                children: [
                  const Padding(
                      padding: EdgeInsets.only(
                    top: 20,
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: ListTile(
                      title: const Text(
                        'البرمجة',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      leading: Image.asset('images/Qualification/prr.png',
                          color: Colors.blue, width: 30),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: ListTile(
                      title: const Text(
                        'التصوير',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      leading: Image.asset('images/Qualification/comr.png',
                          color: Colors.blue, width: 30),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: ListTile(
                      title: const Text(
                        'القراءة',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      leading: Image.asset(
                        'images/Qualification/bo.png',
                        width: 30,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//	الخبرات العملية
class Practical_experiences extends StatelessWidget {
  const Practical_experiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("الخبرات العملية"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 20)),
                Center(
                  child: Image.asset(
                    'images/Qualification/k.png',
                    width: 70,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'الخبرات العملية',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, right: 30),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      ListTile(
                        title: const Text('مطور تطبيقات ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: const Text(
                          'Flutter and dart',
                          style: TextStyle(color: Colors.blue),
                        ),
                        leading: Image.asset(
                          'images/Qualification/ht.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        thickness: 2.3,
                      ),
                      ListTile(
                        title: const Text('مرونة في استخدام نظام ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: const Text(
                          'KALI LINUX',
                          style: TextStyle(color: Colors.blue),
                        ),
                        leading: Image.asset(
                          'images/Qualification/ht.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                      ),
                      const Divider(
                        thickness: 2.3,
                      ),
                      ListTile(
                        title: const Text('فني كاميرات مراقبة',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: const Text(
                          'security cameras',
                          style: TextStyle(color: Colors.blue),
                        ),
                        leading: Image.asset(
                          'images/Qualification/ht.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                      ),
                      const Divider(
                        thickness: 2.3,
                      ),
                      ListTile(
                        title: const Text('برمجه نظام',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: const Text(
                          'Face Recognition in real time system',
                          style: TextStyle(color: Colors.blue),
                        ),
                        leading: Image.asset(
                          'images/Qualification/ht.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                      ),
                      const Divider(
                        thickness: 2.3,
                      ),
                      ListTile(
                        title: const Text('مبرمج جوالات',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: const Text(
                          'software Mobile',
                          style: TextStyle(color: Colors.blue),
                        ),
                        leading: Image.asset(
                          'images/Qualification/ht.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                      ),
                      const Divider(
                        thickness: 2.3,
                      ),
                      ListTile(
                        title: const Text('مسئول حسابات ومشرف نظام',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: const Text(
                          ' مدارس الأوائل الدولية',
                          style: TextStyle(color: Colors.blue),
                        ),
                        leading: Image.asset(
                          'images/Qualification/ht.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                      ),
                      const Divider(
                        thickness: 2.3,
                      ),
                      ListTile(
                        title: const Text('العمل لدى الحوباني سفت ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: const Text(
                          'للأنظمة المحاسبية',
                          style: TextStyle(color: Colors.blue),
                        ),
                        leading: Image.asset(
                          'images/Qualification/ht.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                      ),
                      const Divider(
                        thickness: 2.3,
                      ),
                      ListTile(
                        title: const Text('العمل لدى سما سفت ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: const Text(
                          'للأنظمة المحاسبية',
                          style: TextStyle(color: Colors.blue),
                        ),
                        leading: Image.asset(
                          'images/Qualification/ht.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                      ),
                      const Divider(
                        thickness: 2.3,
                      ),
                      ListTile(
                        title: const Text(
                            'مدير تنفيذي في الدورات التعلمية والحصول على تكليف من المعهد الصحي للعلوم التطبيقية',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: const Text(
                          ' إب - المعهد الصحي للعلوم التطبيقية',
                          style: TextStyle(color: Colors.blue),
                        ),
                        leading: Image.asset(
                          'images/Qualification/ht.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                      ),
                      const Divider(
                        thickness: 2.3,
                      ),
                      ListTile(
                        title: const Text('التسويق',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: const Text(
                          'الحصول على شهادة من برنامج شركة النجاح',
                          style: TextStyle(color: Colors.blue),
                        ),
                        leading: Image.asset(
                          'images/Qualification/ht.png',
                          color: Colors.blue,
                          width: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//	المهارات الشخصية
class Personal_skills extends StatelessWidget {
  const Personal_skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("المهارات الشخصية"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                const Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                Center(
                    child: Image.asset(
                  'images/fff.png',
                  width: 200,
                )),
                const Text(
                  'المهارات الشخصية',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.blue,
                    fontSize: 17,
                  ),
                ),
                //....................................
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                  child: Column(
                    children: const [
                      Divider(),
                      ListTile(
                        leading: Text('1_إدارة فريق العمل بروح التعاون',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Divider(),
                      ListTile(
                        leading: Text('2_القدرة على تحمل ضغط العمل',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Divider(
                          // color: Colors.blue,
                          ),
                      ListTile(
                        leading: Text('3_القدرة على تطوير إلية العمل والفريق',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Divider(
                          // color: Colors.blue,
                          ),
                      ListTile(
                        leading: Text(
                            '4_القدرة على التعامل مع مختلف المستويات الوظيفية',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Divider(
                          // color: Colors.blue,
                          ),
                      ListTile(
                        leading: Text('5_المرونة والقدرة على حل المشاكل ',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Divider(
                          // color: Colors.blue,
                          ),
                      ListTile(
                        leading: Text('6_ممتاز في مهارات الاتصال الشخصي ',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Divider(
                          // color: Colors.blue,
                          ),
                      ListTile(
                        leading: Text('7_القدرة على التخطيط والتنظيم ',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Divider(
                          // color: Colors.blue,
                          ),
                      ListTile(
                        leading: Text(
                          '8_القدرة على اتخاذ القرار وحل المشاكل ',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
