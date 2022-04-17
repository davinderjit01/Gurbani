// import 'package:flutter/material.dart';
// class Bani {
//   final int userId;
//   final int id;
//   final String title;
//
//   const Bani({
//     @required this.userId,
//     @required this.id,
//     @required this.title,
//   });
//
//   //factory constructor create Bani from Jason
//   factory Bani.fromJson(Map<String, dynamic> json) {
//     return Bani(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.baniinfo,
    this.bani,
  });

  Baniinfo baniinfo;
  List<Bani> bani;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    baniinfo: Baniinfo.fromJson(json["baniinfo"]),
    bani: List<Bani>.from(json["bani"].map((x) => Bani.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "baniinfo": baniinfo.toJson(),
    "bani": List<dynamic>.from(bani.map((x) => x.toJson())),
  };
}

class Bani {
  Bani({
    this.line,
  });

  Line line;

  factory Bani.fromJson(Map<String, dynamic> json) => Bani(
    line: Line.fromJson(json["line"]),
  );

  Map<String, dynamic> toJson() => {
    "line": line.toJson(),
  };
}

class Line {
  Line({
    this.id,
    this.shabadid,
    this.gurmukhi,
    this.larivaar,
    this.translation,
    this.transliteration,
    this.pageno,
    this.lineno,
    this.firstletters,
  });

  String id;
  String shabadid;
  Firstletters gurmukhi;
  Firstletters larivaar;
  Translation translation;
  Transliteration transliteration;
  int pageno;
  int lineno;
  Firstletters firstletters;

  factory Line.fromJson(Map<String, dynamic> json) => Line(
    id: json["id"],
    shabadid: json["shabadid"],
    gurmukhi: Firstletters.fromJson(json["gurmukhi"]),
    larivaar: Firstletters.fromJson(json["larivaar"]),
    translation: Translation.fromJson(json["translation"]),
    transliteration: Transliteration.fromJson(json["transliteration"]),
    pageno: json["pageno"],
    lineno: json["lineno"],
    firstletters: Firstletters.fromJson(json["firstletters"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "shabadid": shabadid,
    "gurmukhi": gurmukhi.toJson(),
    "larivaar": larivaar.toJson(),
    "translation": translation.toJson(),
    "transliteration": transliteration.toJson(),
    "pageno": pageno,
    "lineno": lineno,
    "firstletters": firstletters.toJson(),
  };
}

class Firstletters {
  Firstletters({
    this.akhar,
    this.unicode,
  });

  String akhar;
  String unicode;

  factory Firstletters.fromJson(Map<String, dynamic> json) => Firstletters(
    akhar: json["akhar"],
    unicode: json["unicode"],
  );

  Map<String, dynamic> toJson() => {
    "akhar": akhar,
    "unicode": unicode,
  };
}

class Translation {
  Translation({
    this.english,
    this.punjabi,
    this.spanish,
  });

  English english;
  Punjabi punjabi;
  String spanish;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    english: English.fromJson(json["english"]),
    punjabi: Punjabi.fromJson(json["punjabi"]),
    spanish: json["spanish"],
  );

  Map<String, dynamic> toJson() => {
    "english": english.toJson(),
    "punjabi": punjabi.toJson(),
    "spanish": spanish,
  };
}

class English {
  English({
    this.englishDefault,
  });

  String englishDefault;

  factory English.fromJson(Map<String, dynamic> json) => English(
    englishDefault: json["default"],
  );

  Map<String, dynamic> toJson() => {
    "default": englishDefault,
  };
}

class Punjabi {
  Punjabi({
    this.punjabiDefault,
  });

  Firstletters punjabiDefault;

  factory Punjabi.fromJson(Map<String, dynamic> json) => Punjabi(
    punjabiDefault: Firstletters.fromJson(json["default"]),
  );

  Map<String, dynamic> toJson() => {
    "default": punjabiDefault.toJson(),
  };
}

class Transliteration {
  Transliteration({
    this.english,
    this.devanagari,
  });

  Devanagari english;
  Devanagari devanagari;

  factory Transliteration.fromJson(Map<String, dynamic> json) => Transliteration(
    english: Devanagari.fromJson(json["english"]),
    devanagari: Devanagari.fromJson(json["devanagari"]),
  );

  Map<String, dynamic> toJson() => {
    "english": english.toJson(),
    "devanagari": devanagari.toJson(),
  };
}

class Devanagari {
  Devanagari({
    this.text,
    this.larivaar,
  });

  String text;
  String larivaar;

  factory Devanagari.fromJson(Map<String, dynamic> json) => Devanagari(
    text: json["text"],
    larivaar: json["larivaar"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "larivaar": larivaar,
  };
}

class Baniinfo {
  Baniinfo({
    this.id,
    this.akhar,
    this.unicode,
    this.english,
    this.pageno,
    this.source,
    this.writer,
    this.raag,
    this.count,
  });

  int id;
  String akhar;
  String unicode;
  String english;
  int pageno;
  Source source;
  Writer writer;
  Raag raag;
  int count;

  factory Baniinfo.fromJson(Map<String, dynamic> json) => Baniinfo(
    id: json["id"],
    akhar: json["akhar"],
    unicode: json["unicode"],
    english: json["english"],
    pageno: json["pageno"],
    source: Source.fromJson(json["source"]),
    writer: Writer.fromJson(json["writer"]),
    raag: Raag.fromJson(json["raag"]),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "akhar": akhar,
    "unicode": unicode,
    "english": english,
    "pageno": pageno,
    "source": source.toJson(),
    "writer": writer.toJson(),
    "raag": raag.toJson(),
    "count": count,
  };
}

class Raag {
  Raag({
    this.id,
    this.akhar,
    this.unicode,
    this.english,
    this.startang,
    this.endang,
    this.raagwithpage,
  });

  int id;
  String akhar;
  String unicode;
  String english;
  int startang;
  int endang;
  String raagwithpage;

  factory Raag.fromJson(Map<String, dynamic> json) => Raag(
    id: json["id"],
    akhar: json["akhar"],
    unicode: json["unicode"],
    english: json["english"],
    startang: json["startang"],
    endang: json["endang"],
    raagwithpage: json["raagwithpage"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "akhar": akhar,
    "unicode": unicode,
    "english": english,
    "startang": startang,
    "endang": endang,
    "raagwithpage": raagwithpage,
  };
}

class Source {
  Source({
    this.id,
    this.akhar,
    this.unicode,
    this.english,
    this.length,
    this.pageName,
  });

  int id;
  String akhar;
  String unicode;
  String english;
  int length;
  Writer pageName;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    id: json["id"],
    akhar: json["akhar"],
    unicode: json["unicode"],
    english: json["english"],
    length: json["length"],
    pageName: Writer.fromJson(json["pageName"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "akhar": akhar,
    "unicode": unicode,
    "english": english,
    "length": length,
    "pageName": pageName.toJson(),
  };
}

class Writer {
  Writer({
    this.akhar,
    this.unicode,
    this.english,
    this.id,
  });

  String akhar;
  String unicode;
  String english;
  int id;

  factory Writer.fromJson(Map<String, dynamic> json) => Writer(
    akhar: json["akhar"],
    unicode: json["unicode"],
    english: json["english"],
    id: json["id"] == null ? null : json["id"],
  );

  Map<String, dynamic> toJson() => {
    "akhar": akhar,
    "unicode": unicode,
    "english": english,
    "id": id == null ? null : id,
  };
}
