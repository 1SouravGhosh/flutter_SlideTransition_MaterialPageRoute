import 'package:flutter/material.dart';
import 'package:slide_transition_page_route/slide_transition_page_route.dart';

void main() => runApp( MaterialApp( home: HomePage(),) );

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slide Transition Example"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Sceent 1"),
            FloatingActionButton(
              onPressed: ()=> Navigator.push(context,SlideLeftRoute(widget: SecondScreen())),
            )
          ],
        ),
      ),
    );
  }

}

class SecondScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slide Transition Example"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Sceent 2"),
            FloatingActionButton(
              onPressed: ()=> Navigator.push(context,SlideRightRoute(widget: HomePage())),
            )
          ],
        ),
      ),
    );
  }

}

