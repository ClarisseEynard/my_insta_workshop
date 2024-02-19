import 'package:flutter/material.dart';
import 'package:my_insta/widgets/post_cart.dart';
import 'package:my_insta/widgets/story_widget.dart';

// This screen is complete but not the widgets it uses
// You can use it to understand certain points of the architecture in Flutter

class HomeScreen extends StatelessWidget {
  final List _stories = ['story 1', 'story 2', 'story 3', 'story 4', 'story 5'];
  final List _posts = ['post 1', 'post 2', 'post 3', 'post 4', 'post 5'];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // The AppBar contains the Instagram logo
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.black,
        title: const SizedBox(
          height: 50,
          width: 120,
          child: Image(image: AssetImage('assets/img/logo.png')),
        ),
      ),
      body: Column(children: [
        // This container is used to separate the different parts of the screen
        Container(
          color: Colors.grey.shade700,
          height: 1,
          width: MediaQuery.of(context).size.width,
        ),
        // This container contains the stories
        // You have to complete the StoryWidget class
        SizedBox(
          height: 120,
          child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return StoryWidget(
                  username: _stories[index],
                );
              }),
        ),
        Container(
          color: Colors.grey.shade700,
          height: 1,
          width: MediaQuery.of(context).size.width,
        ),
        // This container contains the posts
        // You have to complete the PostCart class
        Expanded(
          child: ListView.builder(
              itemCount: _posts.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return const PostCart();
              }),
        ),
      ]),
    );
  }
}
