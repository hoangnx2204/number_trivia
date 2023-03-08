part of 'number_trivia_bloc.dart';

@freezed
class NumberTriviaEvent with _$NumberTriviaEvent {
  const factory NumberTriviaEvent.started() = _Started;
  const factory NumberTriviaEvent.getConcreteNumber(int number) = _GetConcreteNumber;
  const factory NumberTriviaEvent.getRandomNumber() = _GetRandomNumber;
}