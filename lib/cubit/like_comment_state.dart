part of 'like_comment_cubit.dart';

@immutable
abstract class LikeCommentState {}

class LikeCommentInitial extends LikeCommentState {}

class LikeCommentList extends LikeCommentState {
  final List<Story> stories;

  LikeCommentList({required this.stories});
}
