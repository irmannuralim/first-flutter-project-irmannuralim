import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final List<Widget> content;

  const CardContent({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 80),
        child: Container(
          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: this.content
        ),
      )
    );
  }
}
