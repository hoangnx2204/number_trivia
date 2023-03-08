import 'package:equatable/equatable.dart';
import 'package:number_trivia/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/usecases/usecase.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/repositories/number_trivia_repo.dart';

class GetConcreteNumberUsecase
    extends UseCase<NumberTrivia, GetConcreteParams> {
  final NumberTriviaRepo repo;

  GetConcreteNumberUsecase(this.repo);

  @override
  Future<Either<Failure, NumberTrivia>> call(GetConcreteParams params) async =>
      repo.getConcreteNumber(params.number);
}

class GetConcreteParams extends Equatable {
  final int number;

  const GetConcreteParams(this.number);
  @override
  List<Object?> get props => [number];
}
