import 'package:ayeman/colors.dart';
import 'package:ayeman/widgets/contact_list.dart';
import 'package:flutter/material.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        title: const Text("WhatsPopping", style: TextStyle(
          color: Colors.grey,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.grey)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.grey,)),
        ],
        bottom: const TabBar(
          indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
          Tab(text: "CHATS",),
          Tab(text: "STATUS",),
          Tab(text: "CALLS",),
        ],
        ),
      ),

        body: const ContactList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
    ),
    );
  }
}
