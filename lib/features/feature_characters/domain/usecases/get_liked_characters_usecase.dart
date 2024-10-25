import 'package:rick_and_morty/features/feature_characters/domain/repositories/characters_repository.dart';

class GetLikedCharactersUseCase {
  final CharactersRepository _charactersRepository;

  GetLikedCharactersUseCase(this._charactersRepository);

  Future<Set<int>> call() async {
    return await _charactersRepository.getLikedCharacters();
  }
}
