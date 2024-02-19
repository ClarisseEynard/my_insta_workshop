import 'package:flutter/material.dart';

// Complete the ProfileScreen class

// You will need to use the following widgets:
// Column, Text, Icon, Padding, CircleStory, Row, Center, ListView.builder, StoryWidget, TabBar, Tab, Expanded, TabBarView

class ProfileScreen extends StatelessWidget {
  final List _stories = ['story 1', 'story 2', 'story 3', 'story 4', 'story 5'];

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.black,
              title: const Text(
                'username123',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add_box_outlined,
                    size: 30,
                  ),
                ),
              ]),
          backgroundColor: Colors.black,
          body: const SizedBox(),
            // First Part: user profile details
            /////////////////////////////////////////////////////////////
            
            // Second Part: User stories and posts parts
            ///////////////////////////////////////////////////////////////////////
        );
  }
}
