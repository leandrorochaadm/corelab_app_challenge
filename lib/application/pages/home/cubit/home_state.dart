import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

part 'home_state.g.dart';

@match
enum HomeStateStatus {
  initial,
  loading,
  searching,
  notFound,
  loaded,
  error,
}

class HomeState extends Equatable {
  final HomeStateStatus status;
  final String? errorMessage;
  final String title;

  const HomeState({
    required this.status,
    this.errorMessage,
    required this.title,
  });

  const HomeState.initial()
      : status = HomeStateStatus.initial,
        errorMessage = null,
        title = '';

  @override
  List<Object> get props => [
        status,
        title,
      ];

  HomeState copyWith({
    HomeStateStatus? status,
    String? errorMessage,
    String? title,
  }) {
    return HomeState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      title: title ?? this.title,
    );
  }
}
