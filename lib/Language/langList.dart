// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'arabic_list.dart';
import 'english_list.dart';

class LangData{
  String name;
  String engName;
  String image;
  int id;
  bool current;
  TextDirection decoration;

  LangData(this.name, this.engName, this.image, this.id, this.current,
      this.decoration);
}
class Lang {
  static var english = 1;
  static var arabic = 2;

  List<LangData> langList = [
    LangData(
        "English", "english", "images/image/pd.png.", 1, false, TextDirection.ltr),
    LangData("عربي", "arabic", "images/image/pd.png", 2, false, TextDirection.rtl),

  ];
  late TextDirection decoration;
  Map<int,String>defoultLang=Map();
  set(int id) {
    if (id == Lang.english) {
      defoultLang = l_english;
    }
    if (id == Lang.arabic) {
      defoultLang = l_arabic;
    }
    for(var lang in langList){
      lang.current=false;
      if(lang.id==id){
        lang.current=true ;
        decoration=lang.decoration;
      }
    }
  }
  String get (int id ){
    var str=defoultLang[id];
    if(str == null)
      str="";
    return str;
  }
}
