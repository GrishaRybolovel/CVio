import 'package:cv_io/page/profile_page_core.dart';
import 'package:flutter/material.dart';

import '../widget/drawer_header.dart';
import '../widget/profile_widget.dart';
import 'chat_list_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentPage = "home";

  @override
  Widget build(BuildContext context) {

    var container;
    if(currentPage == "home"){
      container = ProfilePage();
    }else if(currentPage == "chats"){
      container = ChatPage();
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        // leading: IconButton(
        //   onPressed: () => print("Open menu"),
        //   icon: const Icon(Icons.menu),
        // ),
        actions: [
          IconButton(
              onPressed: () => print("search"),
              icon: const Icon(Icons.search))
        ],
        title: const Text(
          'My profile',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                HeaderDrawer(),
                DrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget DrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "My CV", Icons.account_circle_outlined,
              currentPage == "home" ? true : false),
          menuItem(2, "Chats", Icons.chat_bubble_outline,
              currentPage == "chats" ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = "home";
            } else if (id == 2) {
              currentPage = "chats";
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
