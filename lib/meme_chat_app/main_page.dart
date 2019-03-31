import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook/meme_chat_app/image_edit_page.dart';
import 'package:flutter_notebook/meme_chat_app/platform_adaptive.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LiveChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      home: MainPage(),
    );
  }
}

class ChatUser {
  ChatUser({this.name, this.imageUrl});

  final String name;
  final String imageUrl;
}

class ChatMessage {
  final ChatUser sender;
  final String text;
  final String imageUrl;
  final String textOverlay;
  final AnimationController animationController;

  ChatMessage({this.sender,
    this.text,
    this.imageUrl,
    this.textOverlay,
    this.animationController});
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  List<ChatMessage> _messages = [];
  DatabaseReference _messagesReference = FirebaseDatabase.instance.reference();
  TextEditingController _textEditingController = TextEditingController();
  bool _isComposing = false;
  GoogleSignIn _googleSignIn = GoogleSignIn();
  var fireBaseSubscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _googleSignIn.signInSilently();
    FirebaseAuth.instance.signInAnonymously().then((user) {
      fireBaseSubscription =
          _messagesReference.onChildAdded.listen((Event event) {
            var val = event.snapshot.value;
            _addMessage(
                name: val['sender']['name'],
                senderImageUrl: val['sender']['imageUrl'],
                text: val['text'],
                imageUrl: val['imageUrl'],
                textOverlay: val['textOverlay']);
          });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    for (ChatMessage message in _messages) {
      message.animationController.dispose();
    }
    fireBaseSubscription.cancle();
    super.dispose();
  }

  void _handelMessageChanged(String text) {
    setState(() {
      _isComposing = text.length > 0;
    });
  }

  void _handleSubmitted(String text) {
    _textEditingController.clear();
    _googleSignIn.signIn().then((user) {
      var message = {
        'sender': {'name': user.displayName, 'imageUrl': user.photoUrl},
        'text': text,
      };
      _messagesReference.push().set(message);
    });
    setState(() {
      _isComposing = false;
    });
  }

  void _addMessage({String name,
    String text,
    String imageUrl,
    String textOverlay,
    String senderImageUrl}) {
    var animationController =
    AnimationController(duration: Duration(milliseconds: 700), vsync: this);
    var sender = ChatUser(name: name, imageUrl: senderImageUrl);
    var message = ChatMessage(
        sender: sender,
        text: text,
        imageUrl: imageUrl,
        textOverlay: textOverlay,
        animationController: animationController);
    setState(() {
      _messages.insert(0, message);
    });
    if (imageUrl != null) {
      NetworkImage image = NetworkImage(imageUrl);
      image
          .resolve(createLocalImageConfiguration(context))
          .addListener((_, __) {
        animationController?.forward();
      });
    } else {
      animationController?.forward();
    }
  }

  Future<Null> _handlePhotoButtonPresses() async {
    var account = await _googleSignIn.signIn();
    var imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    var random = Random().nextInt(10000);
    var ref = FirebaseStorage.instance.ref().child('image_$random.jpg');
    ref.putFile(imageFile);

    var textOverlay = await Navigator.push(context, ImageEditPage(imageFile));

    if (textOverlay == null) return;
    String downloadUrl = await ref.getDownloadURL();
    var message = {
      'sender': {'name': account.displayName, 'imageUrl': account.photoUrl},
      'imageUrl': downloadUrl.toString(),
      'textOverlay': textOverlay,
    };
    _messagesReference.push().set(message);
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme
          .of(context)
          .accentColor),
      child: PlatformAdaptiveContainer(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(icon: Icon(Icons.photo),
                  onPressed: _handlePhotoButtonPresses),
            ),
            Flexible(
              child: TextField(
                controller: _textEditingController,
                onSubmitted: _handleSubmitted,
                onChanged: _handelMessageChanged,
                decoration: InputDecoration.collapsed(
                    hintText: 'Send a message'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: PlatformAdaptiveButton(
                icon: Icon(Icons.send),
                onPressed: _isComposing ?
                    () => _handleSubmitted(_textEditingController.text)
                    : null,
                child: Text('Send'
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PlatformAdaptiveAppbar(
        title: Text("Chat App"),
        platform: Theme
            .of(context)
            .platform,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (_, int index) {
                  return ChatMsgListItem(_messages[index]);
                }),
          ),
          Divider(height: 1.0,),
          Container(
            decoration: BoxDecoration(color: Theme
                .of(context)
                .cardColor),
            child: _buildTextComposer(),
          )
        ],
      ),
    );
  }
}

class ChatMsgListItem extends StatelessWidget {

  final ChatMessage message;

  ChatMsgListItem(this.message);


  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(parent: message.animationController,
          curve: Curves.easeOut),
      axisAlignment: 0.0,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 16.00),
              child: CircleAvatar(
                backgroundImage: NetworkImage(message.sender.imageUrl),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(message.sender.name,
                  style: Theme
                      .of(context)
                      .textTheme
                      .subhead,),
                Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: ChatMsgContent(message)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChatMsgContent extends StatelessWidget {
  final ChatMessage message;
  ChatMsgContent(this.message);

  @override
  Widget build(BuildContext context) {
    if(message.imageUrl != null){
      var image = Image.network(message.imageUrl, width: 200.0,);
      if(message.textOverlay == null){
        return image;
      }else{
        return Stack(
          alignment: FractionalOffset.topCenter,
          children: <Widget>[
            image,
            Container(
              alignment: FractionalOffset.topCenter,
              width: 200.0,
              child: Text(message.textOverlay,
              style: const TextStyle(
                fontFamily: 'Anton',
                fontSize: 30.0,
                color: Colors.white
              ),
              softWrap: true,
              textAlign: TextAlign.center,),
            )
          ],
        );
      }
    }
  }
}













