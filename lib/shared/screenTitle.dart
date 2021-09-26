import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      child: Text(
        text,
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      curve: Curves.easeInCubic,
      duration: Duration(seconds: 2),
      builder: (BuildContext context, _val, Widget child) {
        return Opacity(
          opacity: _val,
          child: Padding(
              padding: EdgeInsets.all(
                _val * 20,
              ),
              child: child),
        );
      },
    );
  }
}
