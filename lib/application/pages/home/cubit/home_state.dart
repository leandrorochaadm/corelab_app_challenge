import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

import '../../../../domain/entities/entities.dart';

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
  final String errorMessage;
  final String title;
  final String nameProductSearching;
  final List<String> historySearch;
  final List<ProductEntity> products;

  const HomeState({
    required this.status,
    required this.errorMessage,
    required this.title,
    required this.nameProductSearching,
    required this.historySearch,
    required this.products,
  });

  const HomeState.initial()
      : status = HomeStateStatus.initial,
        errorMessage = '',
        title = '',
        nameProductSearching = '',
        historySearch = const [],
        products = const [];

  @override
  List<Object> get props => [
        status,
        historySearch,
        errorMessage,
        title,
        nameProductSearching,
        products,
      ];

  HomeState copyWith({
    HomeStateStatus? status,
    String? errorMessage,
    String? title,
    String? nameProductSearching,
    List<String>? historySearch,
    List<ProductEntity>? products,
  }) {
    return HomeState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      title: title ?? this.title,
      nameProductSearching: nameProductSearching ?? this.nameProductSearching,
      historySearch: historySearch ?? this.historySearch,
      products: products ?? this.products,
    );
  }
}
