// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharactersStore on _CharactersStore, Store {
  late final _$charactersAtom =
      Atom(name: '_CharactersStore.characters', context: context);

  @override
  ObservableList<CharacterEntity> get characters {
    _$charactersAtom.reportRead();
    return super.characters;
  }

  @override
  set characters(ObservableList<CharacterEntity> value) {
    _$charactersAtom.reportWrite(value, super.characters, () {
      super.characters = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_CharactersStore.isLoading', context: context);

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
      Atom(name: '_CharactersStore.hasError', context: context);

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

  late final _$currentPageAtom =
      Atom(name: '_CharactersStore.currentPage', context: context);

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$totalPagesAtom =
      Atom(name: '_CharactersStore.totalPages', context: context);

  @override
  int get totalPages {
    _$totalPagesAtom.reportRead();
    return super.totalPages;
  }

  @override
  set totalPages(int value) {
    _$totalPagesAtom.reportWrite(value, super.totalPages, () {
      super.totalPages = value;
    });
  }

  late final _$fetchCharactersAsyncAction =
      AsyncAction('_CharactersStore.fetchCharacters', context: context);

  @override
  Future<void> fetchCharacters({bool isLoadMore = false}) {
    return _$fetchCharactersAsyncAction
        .run(() => super.fetchCharacters(isLoadMore: isLoadMore));
  }

  late final _$refreshCharactersAsyncAction =
      AsyncAction('_CharactersStore.refreshCharacters', context: context);

  @override
  Future<void> refreshCharacters() {
    return _$refreshCharactersAsyncAction.run(() => super.refreshCharacters());
  }

  @override
  String toString() {
    return '''
characters: ${characters},
isLoading: ${isLoading},
hasError: ${hasError},
currentPage: ${currentPage},
totalPages: ${totalPages}
    ''';
  }
}
