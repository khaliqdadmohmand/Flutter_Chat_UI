import 'package:chat/global.dart';
import 'package:flutter/material.dart';

class closeChats extends StatelessWidget {
  int index;
  closeChats({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[300]!)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(userlist[index]['image']!),
            radius: 25,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Text(
              userlist[index]['name']!,
            ),
          ),
          Icon(Icons.more_vert_outlined)
        ],
      ),
    );
  }
}
