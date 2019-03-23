import 'package:flutter/material.dart';
import 'package:flutter_notebook/fashion_app_01/sources.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(ImageSources.DETAIL_PAGE_TOP_IMAGE),
                        fit: BoxFit.cover)),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.of(context).pop()),
              ),
              Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.shopping_basket,
                      color: Colors.black,
                    ),
                  ),
                  mini: true,
                  elevation: 0.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 80.0),
                child: Text("Accessory",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 37.0,
                  fontWeight: FontWeight.bold
                ),),
              )
            ],
          ),
          SizedBox(height: 26.0,),
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Text(
              'A thing which can be added to something else in order to make it more useful, versatile, or attractive.'
            , style: TextStyle(
              fontSize: 16.0,
              color: Colors.black
            ),),
          ),
          SizedBox(height: 26.0,),
          Container(
            height: 100.0,
            child: ListView(
              padding: EdgeInsets.only(left: 15.0),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(image:
                    NetworkImage(ImageSources.DETAIL_PAGE_MID_IMAGE_TWO),
                    fit: BoxFit.cover)
                  ),
                  child: Text("New In",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                ),
                SizedBox(width: 15.0,),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(image:
                      NetworkImage(ImageSources.DETAIL_PAGE_MID_IMAGE_ONE),
                          fit: BoxFit.cover)
                  ),
                  child: Text("New In",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                ),
                SizedBox(width: 15.0,),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(image:
                      NetworkImage(ImageSources.DETAIL_PAGE_MID_IMAGE_TWO),
                          fit: BoxFit.cover)
                  ),
                  child: Text("New In",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                ),
                SizedBox(width: 15.0,),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(image:
                      NetworkImage(ImageSources.DETAIL_PAGE_MID_IMAGE_ONE),
                          fit: BoxFit.cover)
                  ),
                  child: Text("New In",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.0,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text("All", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                ),
                Tab(
                  child: Text("Glass", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                ),
                Tab(
                  child: Text("Rings", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                ),
                Tab(
                  child: Text("Necklace", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                ),
                Tab(
                  child: Text("Headphone", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                )
              ],
            ),
          ),
          Container(height: MediaQuery.of(context).size.height - 350,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 16.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.network(ImageSources.DETAIL_PAGE_TOP_IMAGE,
                          fit: BoxFit.cover, height: 160,
                          width: 160,),
                          Text('\$1499',
                          style: TextStyle(
                            fontSize: 16.0
                          ),)
                        ],
                      ),
                      SizedBox(width: 15.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.network(ImageSources.DETAIL_PAGE_TOP_IMAGE,
                            fit: BoxFit.cover, height: 160,
                            width: 160,),
                          Text('\$1499',
                            style: TextStyle(
                                fontSize: 16.0
                            ),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0,),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 15.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.network(ImageSources.DETAIL_PAGE_TOP_IMAGE,
                            fit: BoxFit.cover, height: 160,
                            width: 160,),
                          Text('\$1499',
                            style: TextStyle(
                                fontSize: 16.0
                            ),)
                        ],
                      ),
                      SizedBox(width: 15.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.network(ImageSources.DETAIL_PAGE_TOP_IMAGE,
                            fit: BoxFit.cover, height: 160,
                            width: 160,),
                          Text('\$1499',
                            style: TextStyle(
                                fontSize: 16.0
                            ),)
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),)
        ],
      ),
    );
  }
}


















