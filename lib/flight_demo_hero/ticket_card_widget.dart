import 'package:flutter/material.dart';
import 'package:flutter_notebook/flight_demo_hero/fade_page_route.dart';
import 'package:flutter_notebook/flight_demo_hero/model/ticket.dart';
import 'package:flutter_notebook/flight_demo_hero/theme.dart';
import 'package:flutter_notebook/flight_demo_hero/ticket_detail.dart';

class TicketCardWidget extends StatelessWidget {

  final Ticket ticket;
  final bool showQR;

  TicketCardWidget({@required this.ticket, this.showQR = true});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 210.0,
      padding: showQR ? EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0)
          : EdgeInsets.all(0.0),

      child: Material(
        color: primaryColor,

        elevation: showQR ? 8.0 : 0.0,
        borderRadius: BorderRadius.all(
            Radius.circular(8.0)
        ),

        child: InkWell(
          onTap: () {

            Navigator.of(context).push(
              FadePageRoute(widget: TicketDetail(ticket : ticket))
            );

          },

          child: Container(
            margin: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: <Widget>[

                          LocationWidget(
                            stationName: ticket.sourceStation,
                            cityName: ticket.sourceCity,
                            time: ticket.departureTime,
                          ),

                          Spacer(),
                          Icon(
                            Icons.flight_takeoff,
                            color: Colors.white,
                            size: 40.0,
                          ),

                          Spacer(),

                          LocationWidget(
                            stationName: ticket.destinationStation,
                            cityName: ticket.destinationCity,
                            time: ticket.arrivalTime,
                          ),
                        ],
                      ),

                      SizedBox(height: 16.0,),
                      Container(
                        height: 0.5,
                        color: Colors.white,
                      ),

                      SizedBox(
                        height: 16.0,
                      ),

                      AirportDetailWidget(
                          terminal: ticket.terminal,
                          boarding: ticket.boardingTIme,
                          game: ticket.game
                      )

                    ],
                  ),
                ),

                SizedBox(
                  width: 10.0,
                ),

                showQR ? Hero(
                  tag: "qrcode",
                  child: Image.asset("assets/img/my_qr_code.png"
                    , width: 80.0,
//                    color: Colors.white,
                  ),

                ): Container()

              ],
            ),
          ),

        ),
      ),
    );
  }
}


class LocationWidget extends StatelessWidget {

  final String stationName, cityName, time;


  LocationWidget({@required this.stationName, @required this.cityName, @required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(stationName.toUpperCase(),
        style: bigTextStyle,),
        SizedBox(height: 2.0,),
        Text(cityName,
          style: smallTextStyle,),
        SizedBox(height: 2.0,),
        Text(time,
          style: mediumTextStyle,),
      ],
    );
  }
}


class AirportDetailWidget extends StatelessWidget {

  final String terminal, game, boarding;


  AirportDetailWidget({this.terminal, this.game, this.boarding});


  Widget _buildDetailColumn(String label, String value)=>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(label.toUpperCase(), style: smallTextStyle,),
          Text(value, style: smallBoldTextStyle,)
        ],
      );


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildDetailColumn("terminal", terminal),
        Spacer(),
        _buildDetailColumn("game", game),
        Spacer(),
        _buildDetailColumn("boarding", boarding),
      ],
    );
  }



}


























