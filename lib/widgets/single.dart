import 'package:flutter/material.dart';
import 'package:chrmock2/models/embedpost.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:share/share.dart';

class SinglePost extends StatelessWidget {
  final Post post;
  SinglePost({Key key, @required var this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(post.title.rendered),
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
                    child: new Text(
                        post.content.rendered
                            .replaceAll(new RegExp(r'<[^>]*>'), ''),
                        style: TextStyle(color: Colors.white))),
                Divider(color: Colors.white24),
                Row(children: [
                  Text(
                      DateFormat('yyyy-MM-dd – kk:mm')
                          .format(post.date)
                          .toString(),
                      style: TextStyle(color: Colors.white)),
                  IconButton(
                    icon: new Icon(FontAwesomeIcons.shareAlt),
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
                    icon: new Icon(FontAwesomeIcons.save),
                    onPressed: () {
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
