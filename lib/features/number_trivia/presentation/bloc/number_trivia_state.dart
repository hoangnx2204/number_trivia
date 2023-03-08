part of 'number_trivia_bloc.dart';

@freezed
class NumberTriviaState with _$NumberTriviaState {
  const factory NumberTriviaState.initial() = _Initial;
  const factory NumberTriviaState.getTriviaSuccess(NumberTrivia numberTrivia) =
      _GetTriviaSuccess;
  const factory NumberTriviaState.loading() = _Loading;
  const factory NumberTriviaState.error(String err) = _Error;
}
