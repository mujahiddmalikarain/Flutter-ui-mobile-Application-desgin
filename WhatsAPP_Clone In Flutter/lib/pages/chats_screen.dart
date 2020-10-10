import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chat_model.dart';

class Chatsscreen extends StatefulWidget {
  @override
  _ChatsscreenState createState() => _ChatsscreenState();
}

class _ChatsscreenState extends State<Chatsscreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: dumydata.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                new Divider(
                  height: 10.0,
                ),
                new ListTile(
                  leading: new CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: new NetworkImage(dumydata[i].avatarurl),
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        dumydata[i].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        dumydata[i].time,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  subtitle: new Container(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: new Text(
                        dumydata[i].message,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ));
  }
}
