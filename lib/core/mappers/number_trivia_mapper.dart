import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';

extension NumberTriviaMapper on NumberTriviaModel {
  NumberTrivia toEntity() {
    return NumberTrivia(number);
  }
}
