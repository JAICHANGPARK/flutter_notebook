import 'package:flutter/material.dart';
import 'package:flutter_notebook/flight_demo_hero/model/ticket.dart';
import 'package:flutter_notebook/flight_demo_hero/theme.dart';
import 'package:flutter_notebook/flight_demo_hero/ticket_card_widget.dart';

class TicketListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Ticket ticket = Ticket();
    ticket.id = "1";
    ticket.sourceStation = "HND";
    ticket.sourceCity = "Tokyo";
    ticket.departureTime = "10:20";
    ticket.destinationStation = "SFO";
    ticket.destinationCity = "San Francisco";
    ticket.arrivalTime = "08:00";
    ticket.terminal = "2";
    ticket.game = "F42";
    ticket.boardingTIme = "9:50";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Plane Ticket'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            ToggleWidget(firstOption: "Not Used", secondOption: "Already Used"),
            SizedBox(
              height: 20.0,
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                TicketCardWidget(ticket: ticket),
//                Hero(
//                  tag: ticket.id, child: TicketCardWidget(ticket : ticket),
//                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ToggleWidget extends StatelessWidget {
  final String firstOption, secondOption;

  ToggleWidget({this.firstOption, this.secondOption});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: firstOption,
      builder: (context, snapshot) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CustomRadioButton(
                text: firstOption,
                isCurrentActive: isEqual(snapshot.data, firstOption)),
            CustomRadioButton(
                text: secondOption,
                isCurrentActive: isEqual(snapshot.data, secondOption)),
          ],
        );
      },
    );
  }

  bool isEqual(String snapshot, String radioText) {
    return snapshot == radioText;
  }
}

class CustomRadioButton extends StatelessWidget {
  final String text;
  final bool isCurrentActive;

  CustomRadioButton({this.text, this.isCurrentActive});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: isCurrentActive ? 4.0 : 0.0,
      borderRadius:
          isCurrentActive ? BorderRadius.all(Radius.circular(20.0)) : null,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Text(
          text.toUpperCase(),
          style: isCurrentActive
              ? radioSelectedTextStyle
              : radioUnSelectedTextStyle,
        ),
      ),
      color: isCurrentActive ? primaryColor : Colors.white,
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: Text(
        title,
        style: appBarTextStyle,
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.0);
}
