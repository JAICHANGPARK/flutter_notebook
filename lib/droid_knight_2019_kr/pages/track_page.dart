import 'package:flutter/material.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/model/schedule_service.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/model/track_schedule.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/pages/session_detail_page.dart';

class TrackScreen extends StatefulWidget {
  final String filePath;

  TrackScreen(this.filePath);

  @override
  _TrackScreenState createState() => _TrackScreenState(filePath);
}

class _TrackScreenState extends State<TrackScreen> {
  static final int ITEMVIEW_TYPE_NORMAL = 0;
  static final int ITEMVIEW_TYPE_SESSION = 1;
  List<ScheduleModel> datas;
  final String filePath;

  _TrackScreenState(this.filePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: loadSchedule(filePath),
          builder: (BuildContext context,
              AsyncSnapshot<List<ScheduleModel>> snapshot) {
            if (!snapshot.hasData) {
              return new Container();
            }
            datas = snapshot.data;
            return Container(
              color: Colors.black,
              child: ListView.builder(
                  itemCount: datas.length,
                  itemBuilder: (context, i) => Column(
                        children: <Widget>[_itemView(context, i)],
                      )),
            );
          }),
    );
  }

  ListTile _itemView(context, i) {
    if (datas[i].type == ITEMVIEW_TYPE_SESSION) {
      return ListTile(
        leading: Text(
          datas[i].time,
          style: TextStyle(
              color: Theme.of(context).primaryColorLight, fontSize: 12.0),
        ),
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                  maxRadius: 20.0,
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: datas[i].avatarUrl == ""
                      ? Image.asset('assets/img_droid_knights/dk_profile.png')
                          .image
                      : NetworkImage(datas[i].avatarUrl)),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
              ),

              Flexible(
                child: Container(
                  constraints: BoxConstraints(minHeight: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        datas[i].title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Text(
                        datas[i].name,
                        style: TextStyle(
                          color: Color(0xffa5b495),
                          fontSize: 12.0
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        onTap: () => showDetailPage(context, i),
      );
    }else{
      return ListTile(
        leading: Text(
          datas[i].time,
          style: TextStyle(
            color: Theme.of(context).primaryColorLight,
            fontSize: 12.0
          ),
        ),
        title: Text(datas[i].title,
        style: TextStyle(color:
        Theme.of(context).accentColor, fontSize: 16.0),),
      );
    }
  }

  showDetailPage(context, i){
    Navigator.of(context).push(SessionDetailDialog(datas[i]));
  }

}











