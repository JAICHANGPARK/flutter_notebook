

import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'router_handler.dart';

class Routes{
  static String root = '/';
  static String detailPage = '/detail';
  static void configureRoutes(Router router){
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params){
        print("Error ===> route was not founded");
      }
    );
    router.define(detailPage, handler: detailsHandler);
  }
}