import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://chroniques.sn";
//const baseUrl = "https://lemedia.sn";

class APICAT {
  static Future fetchDataCat(int category, {int page}) {
    var url;
    category == 1
        ? url = baseUrl + "/wp-json/wp/v2/posts?_embed&per_page=20" +
         "&?page=" + page.toString()
        : url = baseUrl +
            "/wp-json/wp/v2/posts?categories=" +
            category.toString() +
            "&?page=" + page.toString() +
            "&_embed&per_page=20";
    // return http.get(url,headers: {"Accept": "application/json"});
    return http.get(url);
  }
}
