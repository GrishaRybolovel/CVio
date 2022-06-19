import 'package:flutter/material.dart';
import 'package:cv_io/utils/user_preferences.dart';
import 'package:cv_io/widget/profile_widget.dart';
import 'package:cv_io/user/user.dart';
import 'package:cv_io/page/edit_profile_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
        appBar: AppBar(
          title: Text('CV.io'),
          centerTitle: true,
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            ProfileWidget(
                imagePath: user.imagePath,
                onClicked: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );
                }
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            buildName(user),
            Padding(padding: EdgeInsets.only(top: 50)),
            buildCV(user),
          ],
        )
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          Text(
            user.job,
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ],
      );

  Widget buildCV(User user) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'My CV',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            user.cv,
            style: TextStyle(fontSize: 16, height: 1.4)
          )
        ],
      );
}
