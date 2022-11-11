import 'package:animations/animations.dart';
import 'package:chat/global.dart';
import 'package:chat/widgets/closeChats.dart';
import 'package:chat/widgets/openChat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Friends",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.blueGrey[50],
                padding: EdgeInsets.all(12),
                child: ListView.builder(
                  itemCount: userlist.length,
                  itemBuilder: (context, index) => OpenContainer(
                    transitionDuration: Duration(seconds: 1),
                    transitionType: ContainerTransitionType.fadeThrough,
                    closedBuilder: (context, snapshot) {
                      return closeChats(index: index);
                    },
                    openBuilder: (context, stream) => OpenChat(
                      name: userlist[index]['name']!,
                      image: userlist[index]['image']!,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
