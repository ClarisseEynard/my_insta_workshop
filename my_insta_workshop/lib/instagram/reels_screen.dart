import 'package:flutter/material.dart';
import 'package:my_insta/widgets/reel.dart';

// This screen is complete but not the widgets it uses
// You have to complete the ReelExemple classe

class ReelsScreen extends StatelessWidget {
  ReelsScreen({super.key});

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [Reel(), Reel(), Reel()],
      ),
    );
  }
}
