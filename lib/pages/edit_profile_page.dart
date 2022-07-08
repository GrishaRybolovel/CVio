import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cv_io/utils/user_preferences.dart';
import 'package:cv_io/user/user.dart';
import 'package:cv_io/widget/profile_widget.dart';
import 'package:cv_io/widget/text_field_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.green,
          title: const Text(
            'Edit profile',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            ProfileWidget(
                imagePath: user.imagePath,
                onClicked: () async {}
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) {},
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            TextFieldWidget(
              label: 'Job',
              text: user.job,
              onChanged: (job) {},
            ),
            TextFieldWidget(
              label: 'My CV',
              text: user.cv,
              onChanged: (cv) {},
            ),

          ],
        ));
  }
}
