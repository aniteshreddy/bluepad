import 'package:blog/cubit/like_comment_cubit.dart';
import 'package:blog/presentation/screens/HomePage/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                value: LikeCommentCubit(), child: HomePage()));
      default:
        return null;
    }
  }
}
