import 'package:flutter/material.dart';

List emojiList = [
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/grinning-face_1f600.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/smiling-face-with-open-mouth_1f603.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/smiling-face-with-open-mouth-and-smiling-eyes_1f604.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/grinning-face-with-smiling-eyes_1f601.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/smiling-face-with-open-mouth-and-tightly-closed-eyes_1f606.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/smiling-face-with-open-mouth-and-cold-sweat_1f605.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/rolling-on-the-floor-laughing_1f923.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/face-with-tears-of-joy_1f602.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/smiling-face-with-heart-shaped-eyes_1f60d.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/grinning-face-with-star-eyes_1f929.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/face-throwing-a-kiss_1f618.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/kissing-face_1f617.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/white-smiling-face_263a.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/kissing-face-with-closed-eyes_1f61a.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/face-savouring-delicious-food_1f60b.png",
  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/face-with-stuck-out-tongue_1f61b.png"
];

class StickerDetailPage extends StatefulWidget {
  @override
  _StickerDetailPageState createState() => _StickerDetailPageState();
}

class _StickerDetailPageState extends State<StickerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.teal),
            backgroundColor: Colors.white,
            title: Text(
              "Sticker details",
              style: TextStyle(color: Colors.black),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.info_outline,
                    color: Colors.teal,
                  ),
                  onPressed: () {}),
            ]),
        body: Container(


          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text("Continue NexT Episode"),
                Text("Thanks for watching "),
                Align(
                  alignment: Alignment.topCenter,
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    children: List.generate(16, (index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            child: Image.network(emojiList[index]),
                          ),
                        ),
                      );
                    }),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 60.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.call, color: Colors.white,),
                        SizedBox(width: 16.0,),
                        Text('ADD TO WHATSAPP', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        ),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
