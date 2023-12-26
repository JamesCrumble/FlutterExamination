import 'widgets.dart';
import 'helpers.dart';

import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar() {
  var actions = List<Widget>.empty(growable: true);

  for (int i = 0; i < 5; i++) {
    actions.add(StatefullTextButton());
  }

  return AppBar(
    title: const SizedBox(
      child: Text('Test Bar'),
    ),
    shadowColor: Colors.amber[700],
    centerTitle: true,
    actions: actions,
  );
}
