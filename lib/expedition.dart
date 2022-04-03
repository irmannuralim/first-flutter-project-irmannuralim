import 'package:flutter/material.dart';
import 'package:hello_word/components/appbar.dart';
import 'package:hello_word/components/card_content.dart';

import 'check_dt.dart';

class Expedition extends StatefulWidget {
  @override
  _ExpeditionState createState() => _ExpeditionState();
}

class _ExpeditionState extends State<Expedition> {
  String gate = "P1";
  String dt = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExpeditionAppBar(),
      body: CardContent(
        content: <Widget>[
          DropdownButton<String>(
            isExpanded: true,
            value: gate,
            style: TextStyle(color: Colors.teal),
            onChanged: (String text) {
              setState(() {
                gate = text;
              });
            },
            items: <String>['P1', 'P2', 'P3', 'P4']
              .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
            }).toList(),
          ),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              labelText: 'DT'
            ),
            onChanged: (String text) {
              setState(() {
                dt = text;
              });
            }
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(child: Text("Continuar"),
                onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckDt(dt: dt, gate: gate),
                  ));},
                color: Colors.teal,
                textColor: Colors.white,
                minWidth: double.infinity,
              )
            )
          )
        ]
      )
    );
  }
}
