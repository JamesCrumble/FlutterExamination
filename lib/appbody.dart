import 'helpers.dart';
import 'widgets.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  // build called on class creation and return Center with components
  @override
  Widget build(BuildContext context) {
    debug('*' * 40);
    debug('screen height: ${MediaQuery.of(context).size.height}');
    debug('screen width: ${MediaQuery.of(context).size.width}');
    debug('*' * 40);

    Uri url = Uri.https('flutter.su');
    return Center(
      child: Column(
        children: [
          const Text('Hello world'),
          TextButton(
            onPressed: () async {
              debug('*' * 40);
              debug(url);

              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Cannot launch url';
              }

              debug('pressed button');
              debug('*' * 40);
            },
            child: Text('Test open url in browser context button: $url', selectionColor: Colors.white),
          ),
          const NewsBox(
            'Новый урок по Flutter',
            '''В новом уроке рассказывается в каких случаях применять класс StatelessWidget и StatefulWidget. Приведены примеры их использования.''',
            'https://flutter.su/favicon.png',
          ),
        ],
      ),
    );
  }
}
