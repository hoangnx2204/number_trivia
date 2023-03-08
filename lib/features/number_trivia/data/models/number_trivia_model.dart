import 'package:freezed_annotation/freezed_annotation.dart';
part 'number_trivia_model.g.dart';
part 'number_trivia_model.freezed.dart';

@freezed
class NumberTriviaModel with _$NumberTriviaModel {
  const factory NumberTriviaModel(int number) = _NumberTriviaModel;
  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) =>
      _$NumberTriviaModelFromJson(json);
}
