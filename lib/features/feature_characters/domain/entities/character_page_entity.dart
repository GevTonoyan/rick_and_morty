class CharacterPageEntity {
  final int count;
  final int pages;
  final List<CharacterEntity> characters;

  const CharacterPageEntity({
    required this.count,
    required this.pages,
    required this.characters,
  });
}

class CharacterEntity {
  final int id;
  final String name;
  final String imageUrl;

  const CharacterEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}
