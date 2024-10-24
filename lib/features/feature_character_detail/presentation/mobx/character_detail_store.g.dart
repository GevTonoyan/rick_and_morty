// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharacterDetailStore on _CharacterDetailStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CharacterDetailStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$hasErrorAtom =
      Atom(name: '_CharacterDetailStore.hasError', context: context);

  @override
  bool get hasError {
    _$hasErrorAtom.reportRead();
    return super.hasError;
  }

  @override
  set hasError(bool value) {
    _$hasErrorAtom.reportWrite(value, super.hasError, () {
      super.hasError = value;
    });
  }

  late final _$fetchCharacterDetailAsyncAction = AsyncAction(
      '_CharacterDetailStore.fetchCharacterDetail',
      context: context);

  @override
  Future<void> fetchCharacterDetail(String id) {
    return _$fetchCharacterDetailAsyncAction
        .run(() => super.fetchCharacterDetail(id));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
hasError: ${hasError}
    ''';
  }
}
