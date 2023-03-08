import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/repositories/number_trivia_repo.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_concrete_number_usecase.dart';

import 'get_concrete_number_usecase_test.mocks.dart';

@GenerateMocks([NumberTriviaRepo])
void main() {
  late final NumberTriviaRepo repo;
  late final GetConcreteNumberUsecase usecase;
  setUp(() {
    repo = MockNumberTriviaRepo();
    usecase = GetConcreteNumberUsecase(repo);
  });
  test('should get triva of number from repo', () async {
    when(repo.getConcreteNumber(1))
        .thenAnswer((_) async => const Right(NumberTrivia(1)));
    final actual = await usecase(const GetConcreteParams(1));
    expect(actual, const Right(NumberTrivia(1)));
    verify(repo.getConcreteNumber(1));
    verifyNoMoreInteractions(repo);
  });
}
