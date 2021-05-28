import 'package:blog/data/models/model.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
final Story stories;

  const Heading({Key? key,required this.stories}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          stories.title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        SizedBox(height: 25),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                      width: 150,
                      child: Text(
                        stories.author,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      )),
                  SizedBox(
                      width: 150,
                      child: Text(
                        stories.publishedOn,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 13, letterSpacing: 1),
                      )),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: Colors.blue,
                  ))
            ]),
      ],
    );
  }
}
