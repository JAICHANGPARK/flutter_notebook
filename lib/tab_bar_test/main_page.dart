import 'package:flutter/material.dart';

class TabBarTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    Tab(
      text: 'One',
    ),
    Tab(
      text: "Two",
    ),
    Tab(
      text: "Three",
    ),
    Tab(
      text: "Four",
    )
  ];
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("TabBar & TabView Study", style: TextStyle(
          color: Colors.black,
        ),),
        bottom: TabBar(
//          isScrollable: true,
          tabs: tabs,
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 2,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 18.0,
              vertical: 8),
          indicator: CustomTabIndicator(),
          labelColor: Colors.black,
        ),
      ),
      //Todo
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((tab) {
          return _createTab(tab);
        }).toList(),)
    );
  }

  Widget _createTab(Tab tab){
    return Center(
      child: Text("10 min Rest Time" , style: TextStyle(
        fontSize: 24.0
      ),),
    );
  }
}

class CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([onChanged]) {
    // TODO: implement createBoxPainter
    return CustomPainter(this, onChanged);
  }
}

class CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;

  CustomPainter(this.decoration, VoidCallback onChange)
      :
        assert(decoration != null),
        super(onChange);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);
//    final Rect rect = offset & configuration.size;
    final Rect rect = Offset(offset.dx, (configuration.size.height))
    & Size(configuration.size.width, 15);
    final Paint paint = Paint()
      ..color = Colors.blueAccent
      ..style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndRadius(rect, Radius.circular(10.0)), paint);
  }
}










