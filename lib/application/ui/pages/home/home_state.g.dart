// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// MatchExtensionGenerator
// **************************************************************************

extension HomeStateStatusMatch on HomeStateStatus {
  T match<T>(
      {required T Function() initial,
      required T Function() loading,
      required T Function() searching,
      required T Function() notFound,
      required T Function() loaded,
      required T Function() error,
      required T Function() lastAds}) {
    final v = this;
    if (v == HomeStateStatus.initial) {
      return initial();
    }

    if (v == HomeStateStatus.loading) {
      return loading();
    }

    if (v == HomeStateStatus.searching) {
      return searching();
    }

    if (v == HomeStateStatus.notFound) {
      return notFound();
    }

    if (v == HomeStateStatus.loaded) {
      return loaded();
    }

    if (v == HomeStateStatus.error) {
      return error();
    }

    if (v == HomeStateStatus.lastAds) {
      return lastAds();
    }

    throw Exception('HomeStateStatus.match failed, found no match for: $this');
  }

  T matchAny<T>(
      {required T Function() any,
      T Function()? initial,
      T Function()? loading,
      T Function()? searching,
      T Function()? notFound,
      T Function()? loaded,
      T Function()? error,
      T Function()? lastAds}) {
    final v = this;
    if (v == HomeStateStatus.initial && initial != null) {
      return initial();
    }

    if (v == HomeStateStatus.loading && loading != null) {
      return loading();
    }

    if (v == HomeStateStatus.searching && searching != null) {
      return searching();
    }

    if (v == HomeStateStatus.notFound && notFound != null) {
      return notFound();
    }

    if (v == HomeStateStatus.loaded && loaded != null) {
      return loaded();
    }

    if (v == HomeStateStatus.error && error != null) {
      return error();
    }

    if (v == HomeStateStatus.lastAds && lastAds != null) {
      return lastAds();
    }

    return any();
  }
}
