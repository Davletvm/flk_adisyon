import 'package:flutter/material.dart';
import 'package:ticket_pass_package/ticket_pass.dart';
import 'package:flk_adisyon/src/app/db/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class TicketWidget extends StatefulWidget {
  @override
  TicketWidgetState createState() => TicketWidgetState();
}

class TicketWidgetState extends State<TicketWidget> {
 var db = new DatabaseHelper();
  List<String> sample;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return TicketPass(
      alignment: Alignment.center,
      animationDuration: Duration(seconds: 2),
      expandedHeight: 600,
      expandIcon: CircleAvatar(
        maxRadius: 14,
        child: Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white,
          size: 20,
        ),
      ),
      expansionTitle: Text(
        'Purchased By',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      purchaserList: sample,
      separatorColor: Colors.black,
      separatorHeight: 2.0,
      color: Colors.white,
      curve: Curves.easeOut,
      titleColor: Colors.blue,
      shrinkIcon: Align(
        alignment: Alignment.centerRight,
        child: CircleAvatar(
          maxRadius: 14,
          child: Icon(
            Icons.keyboard_arrow_up,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
