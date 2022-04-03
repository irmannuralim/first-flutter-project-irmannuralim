import 'package:flutter/material.dart';

class ExpeditionAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(actions: <Widget>[
        IconButton(icon: Icon(Icons.more_vert,
        color: Colors.white),
        onPressed: (){},),
      ],
      title: Text("Expedição", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),
      centerTitle: true,
      );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
