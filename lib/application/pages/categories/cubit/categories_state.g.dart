// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_state.dart';

// **************************************************************************
// MatchExtensionGenerator
// **************************************************************************

extension CategoriesStateStatusMatch on CategoriesStateStatus {
  T match<T>(
      {required T Function() initial,
      required T Function() loading,
      required T Function() loaded,
      required T Function() error}) {
    final v = this;
    if (v == CategoriesStateStatus.initial) {
      return initial();
    }

    if (v == CategoriesStateStatus.loading) {
      return loading();
    }

    if (v == CategoriesStateStatus.loaded) {
      return loaded();
    }

    if (v == CategoriesStateStatus.error) {
      return error();
    }

    throw Exception(
        'CategoriesStateStatus.match failed, found no match for: $this');
  }

  T matchAny<T>(
      {required T Function() any,
      T Function()? initial,
      T Function()? loading,
      T Function()? loaded,
      T Function()? error}) {
    final v = this;
    if (v == CategoriesStateStatus.initial && initial != null) {
      return initial();
    }

    if (v == CategoriesStateStatus.loading && loading != null) {
      return loading();
    }

    if (v == CategoriesStateStatus.loaded && loaded != null) {
      return loaded();
    }

    if (v == CategoriesStateStatus.error && error != null) {
      return error();
    }

    return any();
  }
}
