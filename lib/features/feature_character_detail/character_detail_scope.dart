import 'package:rick_and_morty/core/dependency_injection/dependency_injection.dart';
import 'package:rick_and_morty/features/feature_character_detail/data/data_source/remote/character_detail_remote_data_source.dart';
import 'package:rick_and_morty/features/feature_character_detail/data/data_source/remote/character_detail_remote_data_source_impl.dart';
import 'package:rick_and_morty/features/feature_character_detail/data/models/mappers/character_detail_mapper.dart';
import 'package:rick_and_morty/features/feature_character_detail/data/repositories/character_detail_repository_impl.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/repositories/character_detail_repository.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/usecases/get_character_detail_usecase.dart';
import 'package:rick_and_morty/features/feature_character_detail/presentation/mobx/character_detail_store.dart';

void injectCharacterDetailScope() {
  // mobx
  sl.registerFactory<CharacterDetailStore>(
    () => CharacterDetailStore(
      getCharacterDetailUseCase: sl(),
    ),
  );

  // use cases
  sl.registerLazySingleton<GetCharacterDetailUseCase>(
    () => GetCharacterDetailUseCase(sl()),
  );

  // repositories
  sl.registerLazySingleton<CharacterDetailRepository>(
    () => CharacterDetailRepositoryImpl(sl()),
  );

  // data sources
  sl.registerLazySingleton<CharacterDetailRemoteDataSource>(
    () => CharacterDetailRemoteDataSourceImpl(
      apiProvider: sl(),
      characterDetailMapper: sl(),
    ),
  );

  // mappers
  sl.registerLazySingleton<CharacterDetailMapper>(
    () => CharacterDetailMapperImpl(),
  );
}
