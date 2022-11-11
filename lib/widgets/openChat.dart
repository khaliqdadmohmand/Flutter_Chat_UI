import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

class OpenChat extends StatefulWidget {
  String name;
  String image;
  OpenChat({required this.name, required this.image});

  @override
  State<OpenChat> createState() => _OpenChatState();
}

class _OpenChatState extends State<OpenChat> {
  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.image),
              radius: 15,
              backgroundColor: Colors.amber,
            ),
            const SizedBox(width: 15),
            Text(widget.name,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white)),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                color: Colors.blue[50],
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.video_call,
                color: Colors.blue[50],
              ))
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  DateChip(
                    date: new DateTime(now.year, now.month, now.day - 2),
                  ),
                  BubbleNormalAudio(
                    color: Color(0xFFE8E8EE),
                    duration: 8,
                    position: 8,
                    isPlaying: false,
                    isLoading: false,
                    isPause: true,
                    sent: true,
                    onPlayPauseButtonClick: () {},
                    onSeekChanged: (_) {},
                  ),
                  DateChip(
                    date: new DateTime(now.year, now.month, now.day - 1),
                  ),
                  const BubbleSpecialThree(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    color: Color(0xFF1B97F3),
                    tail: true,
                    sent: true,
                    seen: true,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const BubbleSpecialThree(
                    text:
                        "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    color: Color(0xFFE8E8EE),
                    tail: true,
                    isSender: false,
                    sent: true,
                    seen: false,
                  ),
                  DateChip(
                    date: now,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(right: 20, top: 10),
                    child: ClipRRect(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8)),
                      child: Image.asset(
                        "assets/img.jpeg",
                        width: 200,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 20, top: 10),
                    child: ClipRRect(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8)),
                      child: Image.asset(
                        "assets/img2.jpeg",
                        width: 200,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const BubbleSpecialThree(
                    text: 'Lorem ipsum dolor sit amet',
                    color: Color(0xFF1B97F3),
                    tail: true,
                    sent: true,
                    seen: true,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            MessageBar(
              onSend: (_) => print(_),
              actions: [
                InkWell(
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 24,
                  ),
                  onTap: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: InkWell(
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.green,
                      size: 24,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
