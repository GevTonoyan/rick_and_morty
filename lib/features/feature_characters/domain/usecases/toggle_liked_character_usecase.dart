import 'package:rick_and_morty/features/feature_characters/domain/repositories/characters_repository.dart';

class ToggleLikedCharacterUseCase {
  final CharactersRepository _charactersRepository;

  ToggleLikedCharacterUseCase(this._charactersRepository);

  Future<void> call(int id) async {
    await _charactersRepository.toggleLikedCharacter(id);
  }
}
