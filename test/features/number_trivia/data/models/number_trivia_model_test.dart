import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart';

void main() {
  test('should get correct number trivia model from json', () {
    const json = {'number': 10};
    final actual = NumberTriviaModel.fromJson(json);
    expect(actual, const NumberTriviaModel(10));
  });
  test('should get correct json from number trivia model', () {
    const tNumberTriviaModel = NumberTriviaModel(10);
    final json = tNumberTriviaModel.toJson();
    expect(json, {'number': 10});
  });
}
