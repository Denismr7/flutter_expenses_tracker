import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptativeFlatButton extends StatelessWidget {
  final String _text;
  final VoidCallback _onPressedHandler;
  AdaptativeFlatButton(this._text, this._onPressedHandler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              _text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: _onPressedHandler,
          )
        : TextButton(
            onPressed: _onPressedHandler,
            child: Text(
              _text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all(Theme.of(context).primaryColor),
            ),
          );
  }
}
