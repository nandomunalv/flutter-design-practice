import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _createImage(),
          _createTitle(),
          _createActions(),
          _createParagraph(),
          _createParagraph(),
          _createParagraph(),
          _createParagraph(),
          _createParagraph(),
          _createParagraph(),
        ],
      ),
    ));
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage(
              'https://images.ctfassets.net/u0haasspfa6q/2sMNoIuT9uGQjKd7UQ2SMQ/1bb98e383745b240920678ea2daa32e5/sell_landscape_photography_online'),
          height: 200.0,
          fit: BoxFit.cover),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Valle de las mentiras', style: titleStyle),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text('Un valle por algún lugar', style: subTitleStyle),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _action(Icons.call, 'Call'),
        _action(Icons.near_me, 'Route'),
        _action(Icons.share, 'Share'),
      ],
    );
  }

  Widget _action(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _createParagraph() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      child: Text(
        'Aliqua exercitation quis do qui ad. Amet ullamco in irure commodo ullamco est voluptate mollit cillum mollit consectetur commodo duis anim. Laboris tempor magna ex aute. Pariatur eu in deserunt ut sint consequat eu. Velit ut quis mollit culpa in laborum laboris enim laborum enim quis ad do. Enim esse duis sit in.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
