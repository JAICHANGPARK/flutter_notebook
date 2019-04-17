

import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_notebook/china_shop_app/pages/detail_page.dart';

Handler detailsHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params){
    String goodsId = params['id'].first;
    return DetailPage(goodsId);
  }
);