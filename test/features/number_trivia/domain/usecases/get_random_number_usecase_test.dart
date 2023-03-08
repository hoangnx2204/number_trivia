import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/core/common/no_params.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/repositories/number_trivia_repo.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_random_number_usecase.dart';

import 'get_concrete_number_usecase_test.mocks.dart';

void main() {
  late final NumberTriviaRepo repo;
  late final GetRandomNumberUsecase usecase;
  setUp(() {
    repo = MockNumberTriviaRepo();
    usecase = GetRandomNumberUsecase(repo);
  });
  test('should get random trivia from repository', () async {
    when(repo.getRandomNumber())
        .thenAnswer((_) async => const Right(NumberTrivia(1)));
    final actual = await usecase(NoParams());
    expect(actual, const Right(NumberTrivia(1)));
    verify(repo.getRandomNumber());
    verifyNoMoreInteractions(repo);
  });
}
