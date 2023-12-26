import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void debug(Object? msg) {
  if (!kDebugMode) return;

  // ignore: avoid_print
  print('Debug: $msg');
}

Expanded buildExpandedListView(List<Widget> children) {
  return Expanded(child: ListView(children: children));
}
