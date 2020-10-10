import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/calls_screen.dart';
import 'package:whatsappclone/pages/camra_screen.dart';
import 'package:whatsappclone/pages/chats_screen.dart';
import 'package:whatsappclone/pages/status_screen.dart';

class whatsApphome extends StatefulWidget {
  @override
  _whatsApphomeState createState() => _whatsApphomeState();
}

class _whatsApphomeState extends State<whatsApphome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "Chats"),
            new Tab(text: "Status"),
            new Tab(
              text: "Calls",
            )
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Camrascreen(),
          new Chatsscreen(),
          new Statusscreen(),
          new Callsscreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message, color: Colors.white),
        onPressed: () => print("open chats"),
      ),
    );
  }
}
