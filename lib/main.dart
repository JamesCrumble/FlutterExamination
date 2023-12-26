// import 'package:format/format.dart';
import 'appbar.dart';
import 'appbody.dart';

import 'package:flutter/material.dart';

MaterialApp buildApp() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      appBar: buildAppBar(),
      // ignore: prefer_const_constructors
      body: AppBody(),
      // backgroundColor: const Color(0x1B2200FF),
    ),
    debugShowCheckedModeBanner: false,
  );
  return app;
}

void main() {
  runApp(buildApp());
}
