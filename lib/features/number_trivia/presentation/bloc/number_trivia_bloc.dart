import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:number_trivia/core/error/failures.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_concrete_number_usecase.dart';

import '../../domain/entities/number_trivia.dart';

part 'number_trivia_event.dart';
part 'number_trivia_state.dart';
part 'number_trivia_bloc.freezed.dart';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  final GetConcreteNumberUsecase getConcreteNumberUsecase;
  NumberTriviaBloc({
    required this.getConcreteNumberUsecase,
  }) : super(const _Initial()) {
    on<_GetConcreteNumber>((event, emit) async {
      emit(const _Loading());
      final failureOrTrivia =
          await getConcreteNumberUsecase(GetConcreteParams(event.number));
      failureOrTrivia.fold(
        (failure) {
          emit(_Error(_mapFailureToMessage(failure)));
        },
        (trivia) {
          emit(_GetTriviaSuccess(trivia));
        },
      );
    });
  }
  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Server failure';
      case CacheFailure:
        return 'Cache failure';
      default:
        return 'Unexpected failure';
    }
  }
}
