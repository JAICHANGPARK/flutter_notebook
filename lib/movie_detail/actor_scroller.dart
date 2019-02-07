import 'package:flutter/material.dart';
import 'package:flutter_notebook/movie_detail/model/movie.dart';

class ActorScroller extends StatelessWidget {
  final List<Actor> actors;

  ActorScroller(this.actors);

  Widget _buildActor(BuildContext context, int index) {
    var actor = actors[index];

    return Padding(
      padding: const EdgeInsets.only(right : 16.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(actor.avatarUrl),
            radius: 40.0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(actor.name),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Actors',
            style: textTheme.subhead.copyWith(fontSize: 18.0),
          ),
        ),

        SizedBox.fromSize(
          size: Size.fromHeight(120.0),
          child: ListView.builder(
              itemCount: actors.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 12.0, left: 20.0),
              itemBuilder: _buildActor),
        )
      ],
    );
  }
}
