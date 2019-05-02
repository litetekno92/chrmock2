import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';

class Category {
  final int id;
  final String title;
  final ColorSwatch color;
  final IconData icon;
  int page;

  /// Creates a [Category].
  ///
  /// A [Category] saves the title of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // While the  checks for whether a titled parameter is passed in,
  // it doesn't check whether the object passed in is null. We check that
  // in the assert statement.
  Category({
    this.id,
    this.title,
    this.color,
    this.icon,
    this.page,
  });

int get currentPage => page;

set currentPage(int value) => page = value;

}

List<Category> categories = [
  Category(
    id: 1,
    title: "ACCUEIL",
    color: Colors.red,
    icon: FontAwesomeIcons.home,
    page: 1,
  ),
  Category(
    id: 514,
    title: "ÉCONOMIE",
    color: Colors.red,
    icon: FontAwesomeIcons.landmark,
    page: 1,
  ),
  Category(
    id: 653,
    title: "ENVIRONNEMENT",
    color: Colors.red,
    icon: FontAwesomeIcons.recycle,
    page: 1,
  ),
  Category(
    id: 460,
    title: "INTERNATIONAL",
    color: Colors.red,
    icon: FontAwesomeIcons.globeAsia,
    page: 1,
  ),
  Category(
    id: 570,
    title: "HISTOIRE",
    color: Colors.red,
    icon: FontAwesomeIcons.history,
    page: 1,
  ),
  Category(
    id: 470,
    title: "SOCIETE",
    color: Colors.red,
    icon: FontAwesomeIcons.atom,
    page: 1,
  ),
  Category(
    id: 456,
    title: "SPORTS",
    color: Colors.red,
    icon: FontAwesomeIcons.running,
    page: 1,
  ),
  Category(
    id: 468,
    title: "NOS REPORTAGEs",
    color: Colors.red,
    icon: FontAwesomeIcons.film,
    page: 1,
  ),
  Category(
    id: 637,
    title: "CULTURE",
    color: Colors.red,
    icon: FontAwesomeIcons.artstation,
    page: 1,
  ),
  Category(
    id: 578,
    title: "INFOS REGIONS",
    color: Colors.red,
    icon: FlatIcons.route,
    page: 1,
  ),
  Category(
    id: 474,
    title: "POLITIQUE/INSTITUTION",
    color: Colors.red,
    icon: FontAwesomeIcons.landmark,
    page: 1,
  )
];
