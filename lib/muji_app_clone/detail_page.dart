import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailFoodPage extends StatefulWidget {
  @override
  _DetailFoodPageState createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage> {
  Color MujiColor = Color(0xff7f0019);

  Widget _buildAppBar() {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xfffafafa),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: MujiColor,
              size: 30,
            ),
            onPressed: () {},
          ),
          Image.network(
            "https://www.muji.com/jp/passport/img/logo.png",
            height: double.infinity,
            width: 100,
            fit: BoxFit.fitWidth,
          ),
          InkWell(
            onTap: () {},
            child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: MujiColor,
                    ),
                    onPressed: () {})),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: LayoutBuilder(
        builder: (context, viewportConstraints){
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight:viewportConstraints.maxHeight
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: _buildAppBar(),
                  ),
                  Positioned(
                    top: 70,
                    left: 0,
                    right: 0,
                    child: CarouselSlider(
                      autoPlay: true,
                      viewportFraction: 1.0,
                      items: <Widget>[
                        Builder(
                          builder: (context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: 320,
                              decoration: BoxDecoration(
                                  color: MujiColor,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://img.muji.net/img/item/4550182150841_1260.jpg"),
                                      fit: BoxFit.cover)),
                            );
                          },
                        ),
                        Builder(
                          builder: (context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: 320,
                              decoration: BoxDecoration(
                                  color: MujiColor,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://img.muji.net/img/item/4550002861308_1260.jpg"),
                                      fit: BoxFit.cover)),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 16, right: 16),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "素材を生かしたカレー　キーマ　１８０ｇ （１人前）",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 24,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: Text(
                                  "コンビニ受取可",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                                "牛肉の旨みと炒め玉ねぎの甘みを生かし、数種のスパイスで奥行きのある辛さに仕あげました。満足感がある大盛りカレーです。"),
                            SizedBox(
                              height: 8,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "もっと見る",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text("税込"),
                                Text(
                                  "350円 <",
                                  style: TextStyle(color: MujiColor, fontSize: 24),
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Text(
                                  "配送料無料",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text("商品番号82505672"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("数量"),
                              Text("1"),
                              Text("あり")
                            ],
                          ),
                          Divider(color: Colors.black,),
                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: 30
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: MujiColor
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.favorite,color: Colors.grey,),
                              )
                            ],
                          )
                        ],
                      ),
                    ),

                  )
                ],
              ),
            ),
          ),
        },

      ),
    );
  }
}
