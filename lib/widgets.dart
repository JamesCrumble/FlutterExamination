import 'helpers.dart';

import 'package:flutter/material.dart';

class NewsBox extends StatelessWidget {
  final String _title;
  final String _text;
  final String? _imageurl;

  // ignore: use_key_in_widget_constructors
  const NewsBox(this._title, this._text, [this._imageurl]);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = <Widget>[];
    if (_imageurl != null) {
      widgets.add(Image.network(_imageurl, width: 100, height: 100));
    }
    widgets.add(Center(
      child: Column(
        children: [
          Text(_title, textAlign: TextAlign.center),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Text(_text, style: const TextStyle(fontWeight: FontWeight.normal)),
          ),
        ],
      ),
    ));

    return buildExpandedListView(widgets);
  }
}

//
// Statefull Text Button
//

class StatefullTextButton extends StatefulWidget {
  const StatefullTextButton({Key? key}) : super(key: key);

  @override
  State<StatefullTextButton> createState() => TextButtonState();
}

class TextButtonState extends State<StatefullTextButton> {
  int pressedTimes = 0;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        'Button $pressedTimes',
        // style: TextStyle(fontSize: 25),
      ),
      onPressed: () {
        setState(() {
          pressedTimes++;
        });
      },
      // style: TextButton.styleFrom(foregroundColor: Colors.red, elevation: 2, backgroundColor: Colors.amber),
    );
  }
}
