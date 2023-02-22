import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/routers/router_hander.dart';
import '../pages/details_page.dart';

class Routers {
  static String root = "/";
  static String detailsPage = "/detail";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print('error::router 没有找到');
    });

    router.define(detailsPage, handler: detailsHandler);
  }
}
