import 'package:chrmock2/models/category.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomDrawer extends StatelessWidget {
  static String mblue = '#009EEE';
  static String mbluehex = mblue.replaceAll("#", "");
  static Color mbluecol =
      Color(int.parse(mbluehex, radix: 16)).withOpacity(1.0);
  
  static String mred = '#BF0021';
  static String mredhex = mred.replaceAll("#", "");
  static Color mredcol =
      Color(int.parse(mredhex, radix: 16)).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      DrawerHeader(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          // colors: [const Color(0xFFFFFFEE), const Color(0xFF999999)],
           colors: [mbluecol , mredcol],
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        )),
        child: Container(
            child: Column(
          children: <Widget>[
            Material(
             // borderRadius: BorderRadius.all(Radius.circular(50.0)),
                elevation: 10,
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset('images/chroniques-logo.png',
                        width: 92, height: 92))),
            Text('Chroniques.sn',
                style: TextStyle(fontSize: 16.0, color: Colors.white)),
          ],
        )),
      ),
      // Container(child: ListCustomListTile()),
      // CustomListTile(Icons.home, 'Home', () => {}),
      // CustomListTile(Icons.person, 'Profile', () => {}),
      // CustomListTile(Icons.settings, 'Settings', () => {}),
      // ListView.builder(
      //   // Must have an item count equal to the number of items!
      //   itemCount: categories.length,
      //   // A callback that will return a widget.
      //   itemBuilder: (context, int) {
      //     // In our case, a DogCard for each doggo.
      //     return CustomListTile(
      //         icon: categories[int].icon,
      //         text: categories[int].title,
      //         onTap: () {
      //           Navigator.of(context).pop();
      //           Navigator.of(context).push(MaterialPageRoute(
      //               builder: (BuildContext context) =>
      //                   FetchDataCat(categories[int].id)));
      //         });
      //   },
      // ),
      CustomListTile(
          icon: categories[0].icon,
          text: categories[0].title,
          onTap: () {
            
          }),
      CustomListTile(
          icon: categories[1].icon,
          text: categories[1].title,
          onTap: () {
            
          }),
      CustomListTile(
          icon: categories[2].icon,
          text: categories[2].title,
          onTap: () {
            
          }),
      CustomListTile(
          icon: categories[3].icon,
          text: categories[3].title,
          onTap: () {
            
          }),
      CustomListTile(
          icon: categories[4].icon,
          text: categories[4].title,
          onTap: () {
            
          }),
      CustomListTile(
          icon: categories[5].icon,
          text: categories[5].title,
          onTap: () {
           
          }),
      CustomListTile(
          icon: categories[6].icon,
          text: categories[6].title,
          onTap: () {
            
          }),
      CustomListTile(
          icon: categories[7].icon,
          text: categories[7].title,
          onTap: () {
           
          }),
      CustomListTile(
          icon: categories[8].icon,
          text: categories[8].title,
          onTap: () {
            
          }),
      CustomListTile(
          icon: categories[9].icon,
          text: categories[9].title,
          onTap: () {
           
          }),
      // CustomListTile(
      //     icon: categories[0].icon,
      //     text: categories[0].title,
      //     onTap: () {
      //       Navigator.of(context).pop();
      //       Navigator.of(context).push(MaterialPageRoute(
      //           builder: (BuildContext context) => FetchData()));
      //     }),
      // CustomListTile(
      //     icon: categories[1].icon, text: categories[1].title, onTap: () => {}),
      // CustomListTile(
      //     icon: categories[2].icon, text: categories[2].title, onTap: () => {}),
      // // CustomListTile(
      // //     icon: categories[3].icon, text: categories[3].title, onTap: () => {}),
      //  CustomListTile(
      //     icon: categories[3].icon,
      //     text: categories[3].title,
      //     onTap: () {
      //       Navigator.of(context).pop();
      //       Navigator.of(context).push(MaterialPageRoute(
      //           builder: (BuildContext context) => FetchDataCat(6)));
      //     }),
      // CustomListTile(
      //     icon: categories[4].icon, text: categories[4].title, onTap: () {
      //       Navigator.of(context).pop();
      //       Navigator.of(context).push(MaterialPageRoute(
      //           builder: (BuildContext context) => FetchDataCat(category:6)));
      //     }),
      // CustomListTile(
      //     icon: categories[4].icon, text: categories[4].title, onTap: () => {}),
      // CustomListTile(
      //     icon: categories[5].icon, text: categories[5].title, onTap: () => {}),

      CustomListTile(icon: Icons.person, text: 'PROFILE', onTap: () => {}),
      CustomListTile(icon: Icons.settings, text: 'PARAMÈTRES', onTap: () => {}),
      CustomListTile(
          icon: Icons.notifications, text: 'NOTIFICATIONS', onTap: () => {}),
    ]));
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  CustomListTile({this.icon, this.text, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
        child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                color: Colors.grey.shade400,
                width: 2.0,
              )),
            ),
            child: InkWell(
              splashColor: Colors.orangeAccent,
              // When the user taps the button, show a snackbar
              onTap: onTap,
              child: Container(
                  height: 30.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(icon, color: Theme.of(context).primaryColor,),
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(text, style: TextStyle(fontSize: 14.0)),
                          )
                        ]),
                        Icon(Icons.arrow_right),
                      ])),
            )));
  }
}

// class ListCustomListTile extends StatelessWidget {
//   Widget _buildCategoryItem(BuildContext context, int index) {
//     return CustomListTile(
//         icon: categories[index].icon,
//         text: categories[index].title,
//         onTap: () {
//           Navigator.of(context).pop();
//           Navigator.of(context).push(MaterialPageRoute(
//               builder: (BuildContext context) =>
//                   FetchDataCat(category: categories[index].id)));
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: ListView.builder(
//       // Must have an item count equal to the number of items!
//       itemCount: categories.length,
//       // A callback that will return a widget.
//       itemBuilder: (context, int) {
//         // In our case, a DogCard for each doggo.
//         _buildCategoryItem(context, int);
//       },
//     ));
//   }
// }
