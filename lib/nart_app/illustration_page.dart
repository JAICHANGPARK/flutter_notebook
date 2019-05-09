import 'package:flutter/material.dart';
import 'package:flutter_notebook/nart_app/model/artist.dart';

class IllustrationPage extends StatefulWidget {
  @override
  _IllustrationPageState createState() => _IllustrationPageState();
}

class _IllustrationPageState extends State<IllustrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(color: Colors.black),
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        centerTitle: true,
        title: Text(
          "Illustratoin",
          style: TextStyle(color: Colors.grey, letterSpacing: 1.5),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 24,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "partners".toUpperCase(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Text("Filter by"),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: partnersLists.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 240,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Colors.blue,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  offset: Offset(0, 5))
                            ],
                          ),
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(17),
                                child: Image.network(
                                  partnersLists[index].imgPath,
                                  fit: BoxFit.cover,
                                  color: Colors.black.withOpacity(0.3),
                                  colorBlendMode: BlendMode.darken,
                                ),
                              ),
                              Positioned(
                                left: 24,
                                bottom: 24,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(partnersLists[index].title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    Text(partnersLists[index].subTitle,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
