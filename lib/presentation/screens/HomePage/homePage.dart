import 'package:blog/cubit/like_comment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'body.dart';
class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<LikeCommentCubit>(context).emitData();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("BluePad"),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('Yay! A SnackBar!'),
                action: SnackBarAction(
                  label: 'Okay',
                  onPressed: () {
                    scaffoldKey.currentState!.hideCurrentSnackBar();
                  },
                ),
              );
              scaffoldKey.currentState!.showSnackBar(snackBar);
            }),
      ),
      body: Body()
    );
  }
}
