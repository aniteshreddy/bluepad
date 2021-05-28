import 'package:bloc/bloc.dart';
import 'package:blog/data/data.dart';
import 'package:blog/data/models/model.dart';
import 'package:meta/meta.dart';
part 'like_comment_state.dart';

class LikeCommentCubit extends Cubit<LikeCommentState> {
  LikeCommentCubit() : super(LikeCommentInitial());
  void emitData() {
    emit(LikeCommentList(stories: Data.stories));
  }

  void likeCount() {
    Data.stories[0].likes += 1;
    emit(LikeCommentList(stories: Data.stories));
  }

  void commentCount() {
    Data.stories[0].comments += 1;
    emit(LikeCommentList(stories: Data.stories));
  }
}
