import 'dart:convert';

import 'package:chrmock2/widgets/appbar.dart';
import 'package:chrmock2/widgets/carouselwithindicator.dart';
import 'package:flutter/material.dart';
import 'package:chrmock2/models/embedpost.dart';
import 'package:chrmock2/utils/APIcat.dart';
import 'package:chrmock2/widgets/card.dart';
import 'package:chrmock2/widgets/drawer.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';

class FetchDataCat extends StatefulWidget {
  final int category;
  final int page;

  FetchDataCat({this.category, this.page});
  @override
  _FetchDataCatState createState() => _FetchDataCatState(this.category,this.page);
}

class _FetchDataCatState extends State<FetchDataCat> {
  final int category;
   final int page;
  _FetchDataCatState(this.category,this.page);
  // List<Post> list = List();
  var posts = new List<Post>();
  var isLoading = false;
  var carouselPosts = new List<Post>();
  var bodyPosts = new List<Post>();
  ScrollController _controller = ScrollController(); // instance variable

  _fetchDataCat(int category) {
    setState(() {
      isLoading = true;
    });
    APICAT.fetchDataCat(category).then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        posts = list.map((model) => Post.fromJson(model)).toList();
        //     posts.forEach((post) => log(post.title));
        for (var i = 0; i < posts.length; i++) {
          if (i < 6) {
            carouselPosts.add(posts[i]);
          } else {
            bodyPosts.add(posts[i]);
          }
        }
        isLoading = false;
      });
    });
  }

// transform(UTF8.decoder)
  initState() {
    super.initState();
   _fetchDataCat(this.category);
   _controller.addListener(() {
    if (_controller.position.atEdge) {
      if (_controller.position.pixels == 0)
        debugPrint("At extreme top");
      else
       debugPrint("At extreme bottom");
    }
  });
  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        // AppBar(
        //   title: Text("chrmock2 Sn FetchDataCat"),
        // ),
        drawer: CustomDrawer(),
        body: isLoading
            ? Center(
                child: new CircularProgressIndicator(),
              )
: Column( 
  children: [
Expanded(
    child: CustomScrollView(
      controller: _controller,
      slivers: <Widget>[
      
  SliverList(
    delegate: SliverChildListDelegate(
      [
         CarouselWithIndicator(carouselPosts),
      ]
         ),
  ),
  SliverList(
    delegate: SliverChildBuilderDelegate(
      
      (BuildContext context, int index) {
        
        final item = bodyPosts[index];
        if (index > bodyPosts.length) return null;
        return ItemClick(post: item); // you can add your unavailable item here
      },
      childCount: bodyPosts.length,
    ),
  )
]

)
)
]
)
 //           : CarouselWithIndicator(),
            //    Text("chrmock2 Sn FetchDataCat"),
            // : ListView.builder(
            //     itemCount: carouselPosts.length,
            //     itemBuilder: (context, index) {
            //     //  var item = carouselPosts[index];

            //       return CarouselWithIndicator(item: carouselPosts[index]);
            //       // return            ItemClick(post: bodyPosts[index]);
            //     }));
    //       : ListView.builder(
    //           itemCount: bodyPosts.length,
    //           itemBuilder: (context, index) {
    //             // var photo= posts[index];

    // //            return PostCard(bodyPosts[index]);
    // return            ItemClick(post: bodyPosts[index]);
    //           }));
  
  //     child: ListTile(
  //         contentPadding: EdgeInsets.all(10.0),
  //         title: new Text(posts[index].title),
  //         trailing: new Image.network(
  //           posts[index].thumbnailUrl,
  //           fit: BoxFit.cover,
  //           height: 40.0,
  //           width: 40.0,
  //         )),
  //   );
  // },
  //     )
  // );
    );}
}
