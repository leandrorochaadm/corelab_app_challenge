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
  lastAds,
}

class HomeState extends Equatable {
  final HomeStateStatus status;
  final String? errorMessage;
  final String? title;
  final String? nameProductSearching;

  const HomeState({
    required this.status,
    this.errorMessage,
    this.title,
    this.nameProductSearching,
  });

  const HomeState.initial()
      : status = HomeStateStatus.initial,
        errorMessage = '',
        title = '',
        nameProductSearching = '';

  @override
  List<Object> get props => [
        status,
      ];

  HomeState copyWith({
    HomeStateStatus? status,
    String? errorMessage,
    String? title,
    String? nameProductSearching,
  }) {
    return HomeState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      title: title ?? this.title,
      nameProductSearching: nameProductSearching ?? this.nameProductSearching,
    );
  }
}
