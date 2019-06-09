import 'package:flutter/material.dart';
import 'package:flutter_notebook/detailed_biography/user.dart';

class DetailedBiography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "Popular",
                    style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
//                color: Colors.blue,
              ),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: mainUserList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 74,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 16, right: 16),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Center(
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.redAccent,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              mainUserList[index]
                                                  .userImagePath))),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
//                                  color: Colors.green
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    mainUserList[index].userName,
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: 'Montserrat'),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(mainUserList[index].userDetail,
                                      style: TextStyle(
                                          color: Colors.red.withOpacity(0.6),
                                          fontSize: 12,
                                          fontFamily: 'Montserrat')),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Center(
                                child:
                                mainUserList[index].userBookmark ?
                                IconButton(
                                    icon: Icon(Icons.bookmark, color: Colors.red,),
                                    onPressed: (){}):
                                IconButton(
                                    icon: Icon(Icons.bookmark_border, color: Colors.red),
                                    onPressed: (){}),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.red,
          onTap: (newValue) {
            setState(() {
              selectedIndex = newValue;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text(""))
          ]),
    );
  }
}
