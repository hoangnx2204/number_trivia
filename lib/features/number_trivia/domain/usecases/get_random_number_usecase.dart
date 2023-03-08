import 'package:number_trivia/core/common/no_params.dart';
import 'package:number_trivia/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/usecases/usecase.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/repositories/number_trivia_repo.dart';

class GetRandomNumberUsecase extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepo repo;

  GetRandomNumberUsecase(this.repo);
  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async =>
      await repo.getRandomNumber();
}
