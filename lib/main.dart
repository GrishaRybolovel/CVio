import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:cv_io/page/profile_page.dart';
import 'package:cv_io/page/edit_profile_page.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: Home(),
      ),
    );
