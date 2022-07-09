import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Container(
          color: Colors.white,
          height: size.height * 0.02,
        ),
        getChatView(),
        getChatView(),
        getChatView(),
        getChatView(),
      ]
    );
  }

  getChatView(){
    return Container(
      width: double.infinity,
      height: 64,

      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  //todo:MAKE TOUCH INSIDE THE CIRCLE(NO TOUCHES OUTSIDE)
                  image: DecorationImage(
                    image: AssetImage("assets/01.jpeg"),
                    fit: BoxFit.cover,
                  )),
              height: 48,
              width: 48,
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Chat text"),
            )
          ],
        ),
      ));
  }

}