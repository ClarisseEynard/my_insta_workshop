import 'package:flutter/material.dart';

// Complete the CircleStory class

// You will need to use the following widgets:
// Padding, ClipOval, Image, NetworkImage

// For the NetworkImage widget, you can use the following image:
// 'https://cdn.pixabay.com/photo/2018/07/29/23/05/woman-3571298_960_720.jpg'

class CircleStory extends StatelessWidget {
  const CircleStory({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    // SizedBox();
    const Padding(
      padding: EdgeInsets.all(6.0),
      child: ClipOval(
        child: Image(
          height: 68,
          width: 68,
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2018/07/29/23/05/woman-3571298_960_720.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
