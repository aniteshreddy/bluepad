import 'package:blog/cubit/like_comment_cubit.dart';
import 'package:blog/data/models/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LikeComment extends StatelessWidget {
  final Story story;

  const LikeComment({Key? key, required this.story}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      BlocProvider.of<LikeCommentCubit>(context).likeCount();
                    },
                    icon: Icon(Icons.thumb_up_outlined)),
                SizedBox(width: 6),
                Text(story.likes.toString())
              ],
            )),
        Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      BlocProvider.of<LikeCommentCubit>(context).commentCount();
                    },
                    icon: Icon(Icons.comment)),
                SizedBox(width: 6),
                Text(story.comments.toString())
              ],
            ))
      ],
    );
  }
}
