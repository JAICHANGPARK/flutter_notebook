import 'package:flutter/material.dart';
import 'package:flutter_notebook/shoes_app_01/datas.dart';
import 'package:flutter_notebook/shoes_app_01/utils/widget_size_utils.dart';

class ProductScreenTopPart extends StatefulWidget {
  @override
  _ProductScreenTopPartState createState() => _ProductScreenTopPartState();
}

class _ProductScreenTopPartState extends State<ProductScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: screenAwareSize(245.0, context),
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset(
                  SHOES_IMG,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, right: 35.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: screenAwareSize(50.0, context),
                    height: screenAwareSize(50.0, context),
                    decoration: BoxDecoration(
                        color: Colors.black26, shape: BoxShape.circle),
                    child: Image.network(
                      DEGREE_IMG,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: screenAwareSize(18.0, context),
            bottom: screenAwareSize(15.0, context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Rating",
                  style: TextStyle(
                      color: Color(0xff949598),
                      fontSize: screenAwareSize(10.0, context),
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(
                  height: screenAwareSize(8.0, context),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffffe600),
                    ),
                    SizedBox(
                      width: screenAwareSize(5.0, context),
                    ),
                    Text(
                      "4.8",
                      style: TextStyle(color: Color(0xfffffe600)),
                    ),
                    SizedBox(
                      width: screenAwareSize(5.0, context),
                    ),
                    Text(
                      "(2.4k People)",
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductScreenBottomPart extends StatefulWidget {
  @override
  _ProductScreenBottomPartState createState() =>
      _ProductScreenBottomPartState();
}

class _ProductScreenBottomPartState extends State<ProductScreenBottomPart> {
  bool isExpanded = false;
  int currentSizeIndex = 0;
  int currentColorIndex = 0;
  int _counter = 0;

  void _increase() {
    setState(() {
      _counter++;
    });
  }

  void _decrease() {
    setState(() {
      _counter--;
    });
  }

  void _expand() {
    setState(() {
      isExpanded ? isExpanded = false : isExpanded = true;
    });
  }

  List<Widget> colorSelector() {
    List<Widget> colorItemList = new List();
    for (var i = 0; i < colors.length; i++) {
      colorItemList
          .add(colorItem(colors[i], i == currentColorIndex, context, () {
        setState(() {
          currentColorIndex = i;
        });
      }));
    }
    return colorItemList;
  }

  Widget colorItem(
      Color color, bool isSelected, BuildContext context, VoidCallback _ontab) {
    return GestureDetector(
      onTap: _ontab,
      child: Padding(
        padding: EdgeInsets.only(left: screenAwareSize(10.0, context)),
        child: Container(
          width: screenAwareSize(30.0, context),
          height: screenAwareSize(30.0, context),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.8),
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0))
                  ]
                : [],
          ),
          child: ClipPath(
            clipper: MClipper(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: color,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(18.0, context)),
            child: Text(
              "Product Description",
              style: TextStyle(
                  color: Color(0xff949598),
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: 'Montserrat'),
            ),
          ),
          SizedBox(
            height: screenAwareSize(8.0, context),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.0,
              right: 18.0,
            ),
            child: AnimatedCrossFade(
              firstChild: Text(
                desc,
                maxLines: 2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenAwareSize(10, context),
                    fontFamily: 'Montserrat'),
              ),
              secondChild: Text(
                desc,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screenAwareSize(10, context),
                    fontFamily: 'Montserrat'),
              ),
              crossFadeState: isExpanded ? CrossFadeState.showSecond :
              CrossFadeState.showFirst,
              duration: kThemeAnimationDuration,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.0,
              right: 18.0,
            ),
            child: GestureDetector(
              onTap: _expand,
              child: Text(isExpanded ? "less" : "More...",
              style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700
              ),),
            ),
          ),
          SizedBox(height: 12.0,),
          Padding(
            padding: EdgeInsets.only(
              left: 15.0,
              right: 75.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Size",
                style: TextStyle(
                  color: Color(0xff949598),
                  fontSize: 10.0,
                  fontFamily: 'Montserrat'
                ),),
                Text("Quantity",
                  style: TextStyle(
                      color: Color(0xff949598),
                      fontSize: 10.0,
                      fontFamily: 'Montserrat'
                  ),),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 38.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: sizeNumList.map((item){
                      var index = sizeNumList.indexOf(item);
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            currentSizeIndex = index;
                          });
                        },
                        child:  sizeItem(item, index == currentSizeIndex, context),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    width: 100.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Color(0xff525663),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                          flex: 3,
                          child: GestureDetector(
                            onTap: _decrease,
                            child: Container(
                              height: double.infinity,
                              child: Center(
                                child: Text("-",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontFamily: 'Montserrat'
                                ),),
                              ),
                            ),
                          ),
                        ),
                        divider(),
                        Flexible(
                          flex: 3,
                          child: GestureDetector(
                            onTap: _increase,
                            child: Container(
                              height: double.infinity,
                              child: Center(
                                child: Text(_counter.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Montserrat'
                                  ),),
                              ),
                            ),
                          ),
                        ),
                        divider(),
                        Flexible(
                          flex: 3,
                          child: GestureDetector(
                            onTap: _increase,
                            child: Container(
                              height: double.infinity,
                              child: Center(
                                child: Text("+",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Montserrat'
                                  ),),
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8.0,),
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text("Select Color",style:
              TextStyle(
                color: Color(0xff949598),
                fontSize: 10.0,
                fontFamily: 'Montserrat'
              ),),
          ),
          SizedBox(height: 8.0,),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 20.0),
            height: 34.0,
            child: Row(
              children: colorSelector(),
            ),
          ),
          SizedBox(height: 8.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text("Price",
            style: TextStyle(
              color: Color(0xff949598),
              fontFamily: 'Montserrat'
            ),),
          ),

          Container(
            width: ,
          )

        ],
      ),
    );
  }

  Widget sizeItem(String item, bool isSelected, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0),
      child: Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          color: isSelected? Color(0xfffc3930) : Color(0xFF525663),
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: isSelected ? Colors.black.withOpacity(0.5) : Colors.black12,
              offset: Offset(0.0, 10.0),
              blurRadius: 10.0
            ),
          ]
        ),
        child: Center(
          child: Text(item, style: TextStyle(
            color: Colors.white, fontFamily: 'Montserrat'
          ),),
        ),
      ),
    );
  }

  Widget divider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      child: Container(
        width: 0.8,
        color: Colors.white,
      ),
    );
  }

}



class MClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width , 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
