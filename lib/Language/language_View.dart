// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class lang_View extends StatefulWidget {
  final Function() redrow;

  lang_View({required this.redrow});

  @override
  _lang_ViewState createState() => _lang_ViewState();
}

class _lang_ViewState extends State<lang_View> {
  double wi = 0.0;
  double h = 0.0;
  @override
  Widget build(BuildContext context) {
    wi = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          children: [
            Container(
              height: h,
              width: wi,
            ),
            Container(
              child: body(),
            )
          ],
        ),
      ),
    );
  }

  body() {
    return ListView(children: body2());
  }

  body2() {
    List<Widget> list = [];
    list.add(Container(
      child: Row(
        children: [
          Image.asset(
            "images/pr.png",
            height: 30,
            width: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Text(string.get(2))
        ],
      ),
    ));
    for (var langdata in string.langList) {
      var _w = 0.0;
      var _h = 0.0;
      if (langdata.current) {
        _w = 30;
        _h = 30;
      }
      list.add(InkWell(
        onTap: () {
          string.set(langdata.id);
          widget.redrow();
          setState(() {});
        },
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(langdata.image),
            radius: 20,
          ),
          title: Text(langdata.name),
          subtitle: Text(langdata.engName),
          //start move text
          trailing: AnimatedContainer(
            height: _h,
            width: _w,
            duration: Duration(milliseconds: 400),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/pr.png"),
            ),
          ),
        ),
      ));
    }

    return list;
  }
}
