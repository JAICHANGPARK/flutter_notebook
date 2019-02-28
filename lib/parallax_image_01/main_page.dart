import 'package:flutter/material.dart';
import 'package:flutter_notebook/parallax_image_01/data.dart';
import 'package:flutter_notebook/parallax_image_01/page_items.dart';
import 'package:flutter_notebook/parallax_image_01/page_transformer.dart';

class ParallaxImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parallax Image UI', style: TextStyle(
          color: Colors.black
        ),),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox.fromSize(
          size: const Size.fromHeight(500.0),
          child: PageTransformer(

            pageViewBuilder: (context, visibilityResolver) {
              return PageView.builder(
                controller: PageController(viewportFraction: 0.85),
                  itemCount: sampleItems.length,
                  itemBuilder: (context, index) {
                final item = sampleItems[index];
                final pageVisibility =
                    visibilityResolver.resolvePageVisibility(index);

                return PageItems(
                  item: item,
                  pageVisibility: pageVisibility,
                );


              });
            },
          ),
        ),
      ),
    );
  }
}
