import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://chroniques.sn";
//const baseUrl = "https://lemedia.sn";

class APICAT {
  static Future fetchDataCat(int category) {
    var url;
    category == 1
        ? url = baseUrl + "/wp-json/wp/v2/posts?_embed&per_page=20"
        : url = baseUrl +
            "/wp-json/wp/v2/posts?categories=" +
            category.toString() +
            "&_embed&per_page=20";
    // return http.get(url,headers: {"Accept": "application/json"});
    return http.get(url);
  }
}
