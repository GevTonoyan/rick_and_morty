import 'package:rick_and_morty/core/dependency_injection/dependency_injection.dart';
import 'package:rick_and_morty/features/feature_characters/data/data_source/remote/characters_remote_data_source.dart';
import 'package:rick_and_morty/features/feature_characters/data/data_source/remote/characters_remote_data_source_impl.dart';
import 'package:rick_and_morty/features/feature_characters/data/models/mappers/character_page_mapper.dart';
import 'package:rick_and_morty/features/feature_characters/data/repositories/characters_repository_impl.dart';
import 'package:rick_and_morty/features/feature_characters/domain/characters_domain.dart';
import 'package:rick_and_morty/features/feature_characters/presentation/mobx/characters_store.dart';

void injectCharactersScope() {
  // mobx
  sl.registerFactory<CharactersStore>(
    () => CharactersStore(getCharactersUsecase: sl()),
  );

  // use cases
  sl.registerLazySingleton<GetCharactersUsecase>(
    () => GetCharactersUsecase(sl()),
  );

  // repositories
  sl.registerLazySingleton<CharactersRepository>(
    () => CharactersRepositoryImpl(sl()),
  );

  // data sources
  sl.registerLazySingleton<CharactersRemoteDataSource>(
    () => CharactersRemoteDataSourceImpl(
        apiProvider: sl(), characterPageMapper: sl()),
  );

  // mappers
  sl.registerLazySingleton<CharacterPageMapper>(
    () => CharacterPageMapperImpl(),
  );
}
