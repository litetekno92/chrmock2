 import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return 
     AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title:
        Image.asset('images/chroniques-logo.png'),
        // Text('Chroniques.sn'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {
                      clicked(context, "Notifications");
                    },
                  ),
                ),
                PopupMenuItem(
                  child: IconButton(
                    icon: Icon(Icons.email),
                    onPressed: () {
                      clicked(context, "Email sent");
                    },
                  ),
                ),
              ];
            },
          )
        ],
      ) ;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(40.0);
  }

  void clicked(BuildContext context, menu) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(menu),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
  }