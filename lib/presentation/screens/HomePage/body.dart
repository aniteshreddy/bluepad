import 'package:blog/cubit/like_comment_cubit.dart';
import 'package:blog/data/models/model.dart';
import 'package:blog/presentation/screens/HomePage/heading.dart';
import 'package:blog/presentation/screens/HomePage/likeComment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:styled_text/styled_text.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        Fluttertoast.showToast(
          msg: "You reached the bottom of the screen",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      }
    });
    return BlocBuilder<LikeCommentCubit, LikeCommentState>(
      builder: (context, state) {
        final List<Story> stories = (state as LikeCommentList).stories;
        return SingleChildScrollView(
            controller: scrollController,
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Heading(stories: stories[0]),
                    SizedBox(height: 15),
                    Image.asset("assets/image1.png",
                        fit: BoxFit.cover, height: 200),
                    SizedBox(height: 25),
                    StyledText(
                      text: stories[0].data,
                      textAlign: TextAlign.justify,
                      newLineAsBreaks: true,
                      style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 16,
                      ),
                      tags: {
                        'bold': StyledTextTag(
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      },
                    ),
                    Divider(
                      thickness: 2,
                      height: 2,
                    ),
                    LikeComment(
                      story: stories[0],
                    ),
                  ],
                )));
      },
    );
  }
}
