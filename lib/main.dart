import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StoryBoardApp(),
    );
  }
}

class StoryBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Storyboard([
      TextStory(),
      ContainerStory(),
      FullScreenContainerStory(),
    ]);
  }
}

class TextStory extends Story {
  @override
  List<Widget> get storyContent {
    return [
      Text('this is story sample'),
    ];
  }
}

class ContainerStory extends Story {
  @override
  List<Widget> get storyContent {
    return [
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
      ),
      Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
    ];
  }
}

class FullScreenContainerStory extends FullScreenStory {
  @override
  List<Widget> get storyContent {
    return [
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
      ),
      Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
    ];
  }
}
