import 'package:flutter/material.dart';
import 'package:chrmock2/models/embedpost.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:share/share.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_html/flutter_html.dart';


class SinglePost extends StatelessWidget {
  final Post post;
  SinglePost({Key key, @required var this.post}) : super(key: key);
 
  _launchURL(String url) async {
 // const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title:
          Html(
                            data: post.title.rendered.toString(),
                            defaultTextStyle: TextStyle(
                                fontSize: 14.0,
                                decoration: TextDecoration.none)),
 //          new Text(post.title.rendered),
        ),
        body: new Padding(
          padding: EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: new ListView(
              children: <Widget>[
                // new FadeInImage.memoryNetwork(
                //   placeholder: kTransparentImage,
                //   image: post.featuredMedia == 0
                //       ? 'images/placeholder.png'
                //       : post.featuredMediaUrl,
                // ),
                FadeInImage.assetNetwork(
                  placeholder: 'images/placeholder.png',
                  image: post.featuredMediaUrl ??
                      'https://picsum.photos/250?image=9',
                ),
                new Padding(
                    padding: EdgeInsets.all(16.0),
                    child: 
                    // new Text(
                    //     post.content.rendered
                    //         .replaceAll(new RegExp(r'<[^>]*>'), ''),
                    //     style: TextStyle(color: Colors.white))),
                        Html(
        data: (post.content.rendered).toString(),
        defaultTextStyle: TextStyle(
          color: Colors.white,
   //         fontFamily: 'NotoKufiArabic',
            fontSize: 16.0,
            decoration: TextDecoration.none))),
                Divider(color: Colors.white24),
                Row(children: [
                  Text(
                      DateFormat('yyyy-MM-dd – kk:mm')
                          .format(post.date)
                          .toString(),
                      style: TextStyle(color: Colors.white)),
                  IconButton(
                    icon: new Icon(FlatIcons.share,color: Colors.white70,),
                    onPressed: () {
                  //    print("Pressed");
                      RenderBox box = context.findRenderObject();
                        Share.share(post.link,
                            sharePositionOrigin:
                            box.localToGlobal(Offset.zero) &
                            box.size);
                    },
                  ),
                  IconButton(
                    icon: new Icon(FlatIcons.save,color: Colors.white70,),
                    onPressed: () {
                      print("Pressed");
                    },
                  ),
                   IconButton(
                    icon: new Icon(FlatIcons.worldwide_1,color: Colors.white70,),
                    onPressed: () {
                      _launchURL(post.link);
        //              print("Pressed");
                    },
                  ),
                    IconButton(
                    icon: new Icon(FlatIcons.zoom_in,color: Colors.white70,),
                    onPressed: () {
         //             _launchURL(post.link);
                  print("Pressed");
                    },
                  ),
                   IconButton(
                    icon: new Icon(FlatIcons.zoom_out,color: Colors.white70,),
                    onPressed: () {
         //             _launchURL(post.link);
                  print("Pressed");
                    },
                  ),
                  
                ])
              ],
            ),
          ),
        ));
  }
}
