import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'allscreen/contact.dart';

import 'allscreen/propos.dart';

class HelpScreen extends StatefulWidget {
  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Column(
        children: <Widget>[
          Text(
            "Help",
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contact()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(9.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Text("Contact us"),
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProposPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(9.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Text("About us"),
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
