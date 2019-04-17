import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_notebook/china_shop_app/router/application.dart';
import 'package:flutter_notebook/china_shop_app/router/routes.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 1;
  List<Map> hotGoodsList = [];
  GlobalKey<RefreshFooterState> _footerKey = GlobalKey<RefreshFooterState>();
  String homePageContent = '正在获取数据'; // ??? what's mean?
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var formData = {'lon': '115.02932', 'lat': '35.76189'};
    return Scaffold(
      appBar: AppBar(
        title: Text("百姓生活+"),
      ),
      body: FutureBuilder(
          future: request('homePageContent', formData: formData),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = json.decode(snapshot.data.toString());
              List<Map> swiper = (data['data']['slider'] as List).cast();
              List<Map> navigatorList =
                  (data['data']['category'] as List).cast();

              String adPicture =
                  data['data']['advertesPicture']['PICTURE_ADDRESS'];
              String leaderImage = data['data']['shopInfo']['leaderImage'];
              String leaderPhone = data['data']['shopInfo']['leaderPhone'];
              List<Map> recommendList =
                  (data['data']['recommend'] as List).cast();
              String floor1Title = data['data']['floor1Pic']['PICTURE_ADDRESS'];
              String floor2Title =
                  data['data']['floor2Pic']['PICKTURE_ADDRESS'];
              String floor3Title =
                  data['data']['floor3Pic']['PICKTURE_ADDRESS'];
              List<Map> floor1 = (data['data']['floor1'] as List).cast();
              List<Map> floor2 = (data['data']['floor2'] as List).cast();
              List<Map> floor3 = (data['data']['floor3'] as List).cast();

              return EasyRefresh(
                refreshFooter: ClassicsFooter(
                  key: _footerKey,
                  bgColor: Colors.white,
                  textColor: Colors.pink,
                  moreInfoColor: Colors.pink,
                  showMore: true,
                  noMoreText: '',
                  moreInfo: '加载中',
                  loadReadyText: '上拉加载....',
                ),
                child: ListView(
                  children: <Widget>[
                    SwiperDiy(swiperDataList: swiper),
                    TopNavigator(navigatorList: navigatorList),
                  ],
                ),
              );
            }
          }),
    );
  }
}

class SwiperDiy extends StatelessWidget {
  final List swiperDataList;

  SwiperDiy({Key key, this.swiperDataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(333),
      width: ScreenUtil().setWidth(750),
      child: Swiper(
        itemCount: 3,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Application.router.navigateTo(context,
                  '${Routes.detailPage}?id=${swiperDataList[index]['goodsId']}');
            },
            child: Image.network(
              '${swiperDataList[index]['image']}',
              fit: BoxFit.fill,
            ),
          );
        },
        pagination: SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}

class TopNavigator extends StatelessWidget {
  final List navigatorList;

  TopNavigator({Key key, this.navigatorList}) : super(key: key);

  Widget _gridItemUI(BuildContext context, item) {
    return InkWell(
      onTap: () {
        print('clicked');
      },
      child: Column(
        children: <Widget>[
          Image.network(
            item['image'],
            width: ScreenUtil().setHeight(95),
          ),
          Text(item['mallCategoryName'])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (this.navigatorList.length > 10) {
      this.navigatorList.removeRange(10, this.navigatorList.length);
    }
    return Container(
      height: ScreenUtil().setHeight(330),
      padding: EdgeInsets.all(3.0),
      child: GridView.count(
        crossAxisCount: 5,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(5.0),
        children: navigatorList.map((item) {
          return _gridItemUI(context, item);
        }).toList(),
      ),
    );
  }
}
